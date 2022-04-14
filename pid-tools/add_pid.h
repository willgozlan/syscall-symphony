#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include "pid_user_tools.h"

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
#define ATOI_ERROR -7
#define ADD_PID_ERROR -8

#define ATOI_RET_ERROR_VALUE 0

int add_pid(int pid);
