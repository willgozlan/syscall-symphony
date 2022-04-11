#include <fcntl.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <stdio.h>

#define MAX_PID_LENGTH 10

int add_pid(int argc, char* argv[]);
int remove_pid(int argc, char* argv[]);
int pid_exists(int pid);
