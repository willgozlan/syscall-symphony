#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include "pid_user_tools.h"

int main(int argc, char* argv[]) {
    if (argc != 2) {
        if (printf("Usage: %s <PID>", argv[0]) < 0) {
            perror(printf);
            return 1;
        }
        if(fflush(stdout)) {
            perror(fflush);
            return 2;
        }
        return 3;
    }
    int pid = atoi(argv[1]);
    if (pid == 0) {
        perror(atoi);
        return 4;
    }
    int exists = pid_exists(pid);
    if (exists == -1) {
        if (printf("Error with pid_exists!\n") < 0) {
            perror(printf);
            return 5;
        }
        if(fflush(stdout)) {
            perror(fflush);
            return 6;
        }
        return 7;
    }
    else if (exists == 1) {
        if (printf("PID %d is already Musical!\n", pid) < 0) {
            perror(printf);
            return 8;
        }
        if(fflush(stdout)) {
            perror(fflush);
            return 9;
        }
        return 0;
    }
    FILE * pids = fopen(".pids", "a");
    if (pids == NULL) {
        perror(fopen);
        return 10;
    }
    if (fprintf(pids, "%d\n", argv[2]) < 0) {
        perror(fprintf);
        return 11;
    }
    if (fflush(pids)) {
        perror(fflush);
        return 12;
    }
    if (fclose(pids)) {
        perror(fclose);
        return 13;
    }
    return 0;
}
