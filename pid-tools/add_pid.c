#include "add_pid.h"

int add_pid(int pid) {
    int exists = pid_exists(pid);
    if (exists < 0) {
        if (printf("Error with pid_exists!\n") < 0) {
            perror(printf);
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror(fflush);
            return FFLUSH_ERROR;
        }
        return PID_EXISTS_ERROR;
    }
    else if (exists == PID_FOUND) {
        if (printf("PID %d is already Musical!\n", pid) < 0) {
            perror(printf);
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror(fflush);
            return FFLUSH_ERROR;
        }
        return SUCCESS;
    }
    else if(exists == PID_NOT_FOUND) {
        FILE * pids = fopen(".pids", "a");
        if (pids == NULL) {
            perror(fopen);
            return FOPEN_ERROR;
        }
        if (fprintf(pids, "%d\n", argv[2]) < 0) {
            perror(fprintf);
            return FPRINTF_ERROR;
        }
        if (fflush(pids)) {
            perror(fflush);
            return FFLUSH_ERROR;
        }
        if (fclose(pids)) {
            perror(fclose);
            return FCLOSE_ERROR;
        }
        return SUCCESS;
    }
}

int main(int argc, char* argv[]) {
    if (argc != EXPECTED_NUM_ARGS) {
        if (printf("Usage: %s <PID>", argv[PROGRAM_NAME]) < 0) {
            perror(printf);
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror(fflush);
            return FFLUSH_ERROR;
        }
        return USAGE_ERROR;
    }
    int pid = atoi(argv[PID]);
    if (pid == ATOI_RET_ERROR_VALUE) {
        perror(atoi);
        return ATOI_ERROR;
    }
    if (add_pid(pid) < 0) {
        if (printf("Error with add_pid!\n") < 0) {
            perror(printf);
            return PRINTF_ERROR;
        }
        if(fflush(stdout)) {
            perror(fflush);
            return FFLUSH_ERROR;
        }
        return ADD_PID_ERROR;
    }
    return SUCCESS;
}
