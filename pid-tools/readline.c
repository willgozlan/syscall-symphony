/*
 * File Name: readline.c
 * File Summary:
 *  - Very similar to C built in function getline()
 *  - But uses syscall() directly instead of wrapper to avoid recursion within modifed syscall wrapper. 
 *  - Adapted from: https://stackoverflow.com/questions/33106505/read-file-line-by-line-in-c-mostly-with-syscalls  
 */

#include "readline.h"

#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>
#include <stdio.h>
#include <sys/file.h>



#define BUF_SIZE 10

#define SUCCESS 0
#define FLOCK_ERROR 1

#define SYSCALL_FAIL -1
#define FILE_NO_EXIST -1
#define BAD_READ -2
#define END_OF_FILE -3
#define BAD_CLOSE -4



int readline (char *buf, int sz, const char *fn, off_t *offset)
{
    // Open the file
    int fd = syscall(__NR_open, fn, O_RDONLY);
    if(fd == SYSCALL_FAIL) 
    {
	perror("open");
        return FILE_NO_EXIST;
    }

   // acquire lock
    if (syscall(__NR_flock, fd, LOCK_EX) < SUCCESS) { //flock(fd, LOCK_EX) < SUCCESS) {
      perror("flock (acquire)");
      return FLOCK_ERROR;
    }

    int nchr = 0;
    int idx = 0;
    char *p = NULL;

    // Position fd & read the line 
    if((nchr = syscall(__NR_lseek, fd, *offset, SEEK_SET)) != -1)
    {
        nchr = syscall(__NR_read, fd, buf, sz);
    }

    // Read/Lseek error
    if(nchr == SYSCALL_FAIL) 
    {
        // release lock
        if (syscall(__NR_flock, fd, LOCK_UN) < SUCCESS){             // flock(fd, LOCK_UN) < SUCCESS) {
          perror("flock (release)");
          return FLOCK_ERROR;
        }  
	perror("lseek/read"); 
        return BAD_READ;
    }

    // release lock
    if (syscall(__NR_flock, fd, LOCK_UN) < SUCCESS){  //flock(fd, LOCK_UN) < SUCCESS) {
      perror("flock (release)");
      return FLOCK_ERROR;
    }
    // Close file, checking for error
    if(syscall(__NR_close, fd) == SYSCALL_FAIL) 
    {
	perror("close");
        return BAD_CLOSE;
    }

    // Reached end of file since no chars read
    if(nchr == 0) 
    {
        return END_OF_FILE;
    }

    // Check each char
    p = buf;
    while (idx < nchr && *p != '\n')
    {   
        p++;
        idx++;
    }
    *p = 0;

    // Newline not found
    if (idx == nchr) 
    {  
        *offset += nchr;
        // Check file missing newline at end 
        return nchr < sz ? nchr : 0;
    }

    // Increment file offset
    *offset += idx + 1;

    return idx;
}
