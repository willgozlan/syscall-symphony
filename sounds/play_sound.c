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
    char * sound_file;

    switch (sound) {
        case READ:
            sound_file = READ_FILE;
            break;
        case WRITE:
            sound_file = WRITE_FILE;
            break;
        case OPEN:
            sound_file = OPEN_FILE;
            break;
        case CLOSE:
            sound_file = CLOSE_FILE;
            break;
        case MALLOC:
            sound_file = MALLOC_FILE;
            break;
        case FREE:
            sound_file = FREE_FILE;
            break;
        case FORK:
            sound_file = FORK_FILE;
            break;
        case SLEEP:
            sound_file = SLEEP_FILE;
            break;
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
    if ((pid = syscall(__NR_fork)) < SUCCESS) {
        perror("syscall");
        return FORK_ERROR;
    }
    else if (pid == CHILD) {
        /* child */
        char * argv[] = {"/usr/bin/aplay", sound_file, NULL};
        if (syscall(__NR_execve, "/usr/bin/aplay", argv, NULL) < SUCCESS) {
            perror("syscall");
            return EXEC_ERROR;
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

int main() {
    play_sound(OPEN);
    return SUCCESS;
}
