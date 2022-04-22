/* Linux open syscall implementation, non-LFS.
   Copyright (C) 2017-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library.  If not, see
   <https://www.gnu.org/licenses/>.  */

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdarg.h>

// We added:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
//#include "../../../../misc/pid_exists.h"
/*
// For PID stuff: 
#include <unistd.h>
#include <sys/syscall.h>
#define BUF_SIZE 10
#define INTEGER_BASE 10

#define SYSCALL_FAIL -1
#define FILE_NO_EXIST -1
#define BAD_READ -2
#define END_OF_FILE -3
#define BAD_CLOSE -4

#define PID_FOUND 1
#define PID_NOT_FOUND 0

int readline(char *buf, int sz, const char *fn, off_t *offset);
int my_atoi(char* str); 
int pid_exists(int pid);



* Main function to check if a pid exists in our PID list.
 * Returning result of that, or unique error code
 * 
int pid_exists(int pid)
{
    char line[BUF_SIZE] = {0};
    off_t offset = 0;
    int len = 0;

    // Using readline to read each line of file ".pids" into "line" 
    while ((len = readline(line, BUF_SIZE, "/home/pi/syscall-symphony/pid-tools/.pids", &offset)) > 0)
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




* Very similar to C built in function getline(), but uses syscall() directly instead of wrapper 
 * to avoid recursion within modifed syscall wrapper. 
 * Adopted from: https://stackoverflow.com/questions/33106505/read-file-line-by-line-in-c-mostly-with-syscalls  
 *
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




* Internal function to convert from string to integer. 
 * Same usage as C's built in atoi() function, without worry of built in system calls
 * Adopted from: https://www.geeksforgeeks.org/write-your-own-atoi/
 *
int my_atoi(char* str)
{
    int res = 0;
    for (int i = 0; str[i] != '\0'; ++i)
    {
        res = res * INTEGER_BASE + str[i] - '0';
    }
    return res;
}
*/
// end PID stuff

#include <sysdep-cancel.h>

#ifndef __OFF_T_MATCHES_OFF64_T

/* Open FILE with access OFLAG.  If O_CREAT or O_TMPFILE is in OFLAG,
   a third argument is the file protection.  */
int
__libc_open (const char *file, int oflag, ...)
{
  int mode = 0;

 // if(pid_exists(getpid()) == PID_FOUND)
  //{
	if(system("/usr/bin/aplay /home/pi/syscall-symphony/sounds/open.wav") == -1)
  	{
		printf("system() failed\n");
		return -1;
 	}
 // }

  if (__OPEN_NEEDS_MODE (oflag))
    {
      va_list arg;
      va_start (arg, oflag);
      mode = va_arg (arg, int);
      va_end (arg);
    }

  return SYSCALL_CANCEL (openat, AT_FDCWD, file, oflag, mode);
}
libc_hidden_def (__libc_open)

weak_alias (__libc_open, __open)
libc_hidden_weak (__open)
weak_alias (__libc_open, open)
#endif
