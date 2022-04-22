/* Very similar to C built in function getline(), but uses syscall() directly instead of wrapper 
 * to avoid recursion within modifed syscall wrapper. 
 * Adopted from: https://stackoverflow.com/questions/33106505/read-file-line-by-line-in-c-mostly-with-syscalls  
 */

#include "pid_exists.h"


int readline (char *buf, int sz, const char *fn, off_t *offset)
{
    // Open the file
    int fd = syscall(__NR_open, fn, O_RDONLY);
    if(fd == SYSCALL_FAIL) 
    {
        return FILE_NO_EXIST;
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
        return BAD_READ;
    }

    // Close file, checking for error
    if(syscall(__NR_close, fd) == SYSCALL_FAIL) 
    {
        return BAD_CLOSE;
    }

    // Reached end of file since no chars read
    if(nchr == 0) 
    {
        return END_OF_FILE;
    }

    // Check each chacr
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
