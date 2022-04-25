#include "play_sound.h"
#include<sys/wait.h>
#include<errno.h>
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include <linux/unistd.h>

// ERROR CODES
#define SUCCESS 0
#define PRINTF_ERROR -1
#define FFLUSH_ERROR -2
#define USAGE_ERROR -3
#define FORK_ERROR -4
#define EXEC_ERROR -5
#define WAITID_ERROR -6

// FILEPATH MACROS
#define READ_FILE "/home/pi/syscall-symphony/sounds/read.wav"
#define WRITE_FILE "/home/pi/syscall-symphony/sounds/write.wav"
#define OPEN_FILE "/home/pi/syscall-symphony/sounds/open.wav"
#define CLOSE_FILE "/home/pi/syscall-symphony/sounds/close.wav"
#define MALLOC_FILE "/home/pi/syscall-symphony/sounds/malloc.wav"
#define FREE_FILE "/home/pi/syscall-symphony/sounds/free.wav"
#define FORK_FILE "/home/pi/syscall-symphony/sounds/fork.wav"
#define SLEEP_FILE "/home/pi/syscall-symphony/sounds/sleep.wav"

// Other Constants
#define CHILD 0

int play_sound(int sound) {

    pid_t pid;
    siginfo_t siginfo;

    if ((pid = syscall(__NR_fork)) < SUCCESS) {
        perror("syscall");
        return FORK_ERROR;
    }
    else if (pid == CHILD) {
        /* child */
        switch (sound) {
            case READ: {
                const char * argv[] = {"/usr/bin/aplay", READ_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            case WRITE: {
                const char * argv[] = {"/usr/bin/aplay", WRITE_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            case OPEN: {
                const char * argv[] = {"/usr/bin/aplay", OPEN_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            case CLOSE: {
                const char * argv[] = {"/usr/bin/aplay", CLOSE_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            case MALLOC: {
                const char * argv[] = {"/usr/bin/aplay", MALLOC_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            case FREE: {
                const char * argv[] = {"/usr/bin/aplay", FREE_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            case FORK: {
                const char * argv[] = {"/usr/bin/aplay", FORK_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            case SLEEP: {
                const char * argv[] = {"/usr/bin/aplay", SLEEP_FILE, NULL};
                if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
                    perror("syscall");
                    return EXEC_ERROR;
                }
                break;
            }
            default:
                if (printf("Input is not a valid sound MACRO.\n") < SUCCESS) {
                    perror("printf");
                    return PRINTF_ERROR;
                }
                if(fflush(stdout)) {
                    perror("fflush");
                    return FFLUSH_ERROR;
                }
                return USAGE_ERROR;
        }
        return SUCCESS;
    }
    else {
        /* parent */
        if (syscall(__NR_waitid, P_PID, pid, &siginfo, WEXITED) < SUCCESS) {
            perror("syscall");
            return WAITID_ERROR;
        }
        return SUCCESS;
    }
}
