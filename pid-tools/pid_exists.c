/*
 * File: pid_exists.c
 * Check if the passed in PID is in the PID list. 
 * Helper functions for this function are also defined. 
*/

#include "pid_exists.h"


/* Main function to check if a pid exists in our PID list.
 * Returning result of that, or unique error code
 */ 
int pid_exists(int pid)
{
    char line[BUF_SIZE] = {0};
    off_t offset = 0;
    int len = 0;

    // Using readline to read each line of file ".pids" into "line" 
    while ((len = readline(line, BUF_SIZE, "/syscall-symphony/pid-tools/.pids", &offset)) > 0)
    {
        // Check if PID is present on current line
        if(my_atoi(line) == pid)
        {
            return PID_FOUND;
        }
    }
    // End of file reached
    if (len == END_OF_FILE)
    {
        return PID_NOT_FOUND;
    }
    // Otherwise, error, so return error code which is in len
    return len;
}




/* Very similar to C built in function getline(), but uses syscall() directly instead of wrapper 
 * to avoid recursion within modifed syscall wrapper. 
 * Adopted from: https://stackoverflow.com/questions/33106505/read-file-line-by-line-in-c-mostly-with-syscalls  
 */
int readline (char *buf, int sz, char *fn, off_t *offset)
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




/* Internal function to convert from string to integer. 
 * Same usage as C's built in atoi() function, without worry of built in system calls
 * Adopted from: https://www.geeksforgeeks.org/write-your-own-atoi/
 */
int my_atoi(char* str)
{
    int res = 0;
    for (int i = 0; str[i] != '\0'; ++i)
    {
        res = res * INTEGER_BASE + str[i] - '0';
    }
    return res;
}
