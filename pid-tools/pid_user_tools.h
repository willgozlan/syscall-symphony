#include <fcntl.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <stdio.h>

#define MAX_PID_LENGTH 10

int add_pid(void);
int remove_pid(void);
int pid_exists(void);
