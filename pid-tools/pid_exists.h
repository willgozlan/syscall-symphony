/*
 * File Name: pid_exists.h
 * File Summary
 *  - Header file for pid_exists.c
 *  - Checks if the passed in PID is in the PID list. 
 *  - Helper functions are also defined
*/

#pragma once

//#include <stdio.h>
//#include <fcntl.h>
//#include <unistd.h>
//#include <stdlib.h>
//#include <sys/syscall.h>

/*#define BUF_SIZE 10
#define INTEGER_BASE 10

#define SYSCALL_FAIL -1
#define FILE_NO_EXIST -1
#define BAD_READ -2
#define END_OF_FILE -3
#define BAD_CLOSE -4*/

#define PID_FOUND 1
#define PID_NOT_FOUND 0

//int readline(char *buf, int sz, const char *fn, off_t *offset);
//int my_atoi(char* str); 
int pid_exists(int pid);
