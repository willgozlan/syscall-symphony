/*
 * File Name: add_pid.c
 * File Summary: 
 *  - Checks that given command line input is a reasonable PID and is not already in the .pids file
 *  - Adds it to the .pids file to mark it as having sound privileges
*/

#include "pid_user_tools.h"

/*
Checks if PID is already in the .pids file and adds it if not
*/
int add_pid(int pid) {
    int exists = pid_exists(pid); // checks if PID has sound privileges
    if (exists < SUCCESS) {
        if (printf("Error with pid_exists!\n") < SUCCESS) {
            perror("printf");
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror("fflush");
            return FFLUSH_ERROR;
        }
        return PID_EXISTS_ERROR;
    }
    else if (exists == PID_FOUND) {
        if (printf("PID %d is already Musical!\n", pid) < SUCCESS) {
            perror("printf");
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror("fflush");
            return FFLUSH_ERROR;
        }
        return SUCCESS;
    }
    else {
        FILE * pids = fopen("/syscall-symphony/pid-tools/.pids", "a");
        if (pids == NULL) {
            perror("fopen");
            return FOPEN_ERROR;
        }
        int fd = fileno(pids);
        if (fd < 0) {
          perror("fileno");
          return FILENO_ERROR;
        }
        // acquire lock
        if (flock(fd, LOCK_EX) == -1) {
          perror("flock_acquire");
          return FLOCK_ERROR;
        }
        if (fprintf(pids, "%d\n", pid) < SUCCESS) {
            // release lock
            if (flock(fd, LOCK_UN) == -1) {
              perror("flock_release");
              return FLOCK_ERROR;
            }
            perror("fprintf");
            return FPRINTF_ERROR;
        }
        if (fflush(pids)) {
            // release lock
            if (flock(fd, LOCK_UN) == -1) {
              perror("flock_release");
              return FLOCK_ERROR;
            }
            perror("fflush");
            return FFLUSH_ERROR;
        }
        if (flock(fd, LOCK_UN) == -1) {
          perror("flock_release");
          return FLOCK_ERROR;
        }
        if (fclose(pids)) {
            perror("fclose");
            return FCLOSE_ERROR;
        }
        return SUCCESS;
    }
}

/*
Checks command line input and calls add_pid()
*/
int main(int argc, char* argv[]) {
    if (argc != EXPECTED_NUM_ARGS) {
        if (printf("Usage: %s <PID>\n", argv[PROGRAM_NAME]) < SUCCESS) {
            perror("printf");
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror("fflush");
            return FFLUSH_ERROR;
        }
        return USAGE_ERROR;
    }
    int pid = atoi(argv[PID]);
    if (pid == ATOI_RET_ERROR_VALUE) {
        if (printf("Usage: %s <PID>\n", argv[PROGRAM_NAME]) < SUCCESS) {
            perror("printf");
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror("fflush");
            return FFLUSH_ERROR;
        }
        return USAGE_ERROR;
    }
    if (add_pid(pid) < SUCCESS) {
        if (printf("Error with add_pid!\n") < SUCCESS) {
            perror("printf");
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror("fflush");
            return FFLUSH_ERROR;
        }
        return ADD_PID_ERROR;
    }
    return SUCCESS;
}
