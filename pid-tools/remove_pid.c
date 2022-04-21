#include "pid_user_tools.h"

int remove_pid(char* pid) {
    if (access(".pids", F_OK) != SUCCESS) {
         return NO_DOT_PIDS_FILE;
    }
    else {
      FILE * pidfile;
      pidfile = fopen(".pids", "a+");
      if (!pidfile) {
        perror("fopen");
        return FOPEN_ERROR;
      }
      FILE * temp;
      temp = fopen("temp", "w+");
      if (!temp) {
        perror("fopen");
        return FOPEN_ERROR;
      }

      char *buf;
      size_t bufsize = 10;
      ssize_t read;

      buf = (char *)malloc(bufsize * sizeof(char));
      if (buf == NULL) {
        perror("malloc");
        return MALLOC_ERROR;
      }
        
           while ((read = getline(&buf, &bufsize, pidfile)) > SUCCESS) {
        buf[strlen(buf) - 1] = '\0';

        if (strcmp(buf, pid) != SUCCESS) {
          if (fputs(buf, temp) == EOF) {
            perror("fputs");
            return FPUTS_ERROR;
          }
          if (fputc('\n', temp) == EOF) {
            perror("fputc");
            return FPUTC_ERROR;
          }
        }
        if(fflush(temp)) {
          perror("fflush");
          return FFLUSH_ERROR;
        }
      }
        
              lseek(fileno(temp), 0, SEEK_SET);
      pidfile = freopen(".pids", "w", pidfile);
      while ((read = getline(&buf, &bufsize, temp)) > SUCCESS) {
        if (fputs(buf, pidfile) == EOF) {
          perror("fputs");
          return FPUTS_ERROR;
        }
      }
      if (fclose(pidfile)) {
        perror("fclose");
        return FCLOSE_ERROR;
      }
      if (fclose(temp)) {
        perror("fclose");
        return FCLOSE_ERROR;
      }

      if (remove("temp") != SUCCESS) {
        perror("remove");
        return REMOVE_FILE_ERROR;
      }

    }
  return SUCCESS;
}

int main (int argc, char *argv[]) {
  if (argc != EXPECTED_NUM_ARGS) {
    if (printf("Usage: %s <PID>", argv[PROGRAM_NAME]) < SUCCESS) {
      perror("printf");
      return PRINTF_ERROR;
    }
    if (fflush(stdout)) {
      perror("printf");
      return FFLUSH_ERROR;
    }
    return USAGE_ERROR;
  }

  if (remove_pid(argv[PID]) < SUCCESS) {
    if (printf("Error with remove_pid!\n") < SUCCESS) {
      perror("printf");
      return PRINTF_ERROR;
    }
    if (fflush(stdout)) {
      perror("fflush");
      return FFLUSH_ERROR;
    }
    return REMOVE_PID_ERROR;

  }
  else {
    return SUCCESS;
  }
}
