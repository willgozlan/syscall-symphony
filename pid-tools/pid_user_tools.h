/*
 * File Name: pid_user_tools.h
 * File Summary: Header file for add_pid.c & remove_pid.c
 */

#pragma once

#include "pid_exists.h"
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <string.h>
#include <sys/file.h>

#define MAX_PID_LENGTH 10

#define EXPECTED_NUM_ARGS 2

#define PROGRAM_NAME 0
#define PID 1

#define PID_FOUND 1
#define PID_NOT_FOUND 0

#define SUCCESS 0
#define PRINTF_ERROR -1
#define FFLUSH_ERROR -2
#define PID_EXISTS_ERROR -3
#define FOPEN_ERROR -4
#define FCLOSE_ERROR -5
#define USAGE_ERROR -6
#define ADD_PID_ERROR -7
#define FPRINTF_ERROR -8
#define REMOVE_PID_ERROR -9
#define MALLOC_ERROR -10
#define FPUTS_ERROR -11
#define FPUTC_ERROR -12
#define REMOVE_ERROR -13
#define NO_DOT_PIDS_FILE -14
#define FLOCK_ERROR -15
#define FILENO_ERROR -16

#define ATOI_RET_ERROR_VALUE 0

int add_pid(int pid);
int remove_pid(char *pid);
