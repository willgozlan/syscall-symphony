#include "pid_user_tools.h"

int add_pid(int pid) {
    int exists = pid_exists(pid);
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
        FILE * pids = fopen("/home/pi/syscall-symphony/pid-tools/.pids", "a");
        if (pids == NULL) {
            perror("fopen");
            return FOPEN_ERROR;
        }
        if (fprintf(pids, "%d\n", pid) < SUCCESS) {
            perror("fprintf");
            return FPRINTF_ERROR;
        }
        if (fflush(pids)) {
            perror("fflush");
            return FFLUSH_ERROR;
        }
        if (fclose(pids)) {
            perror("fclose");
            return FCLOSE_ERROR;
        }
        return SUCCESS;
    }
}

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
