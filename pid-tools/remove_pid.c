#include "pid_user_tools.h"

int remove_pid(char* pid) {
    if (access(".pids", F_OK) != SUCCESS) {
         return NO_DOT_PIDS_FILE;
    }
    else {
      FILE * pidfile;
      pidfile = fopen("/syscall-symphony/pid-tools/.pids", "a+");
      if (!pidfile) {
        perror("fopen");
        return FOPEN_ERROR;
      }

      int fd = fileno(pidfile);
      if (fd < 0) {
        perror("fileno");
        return FILENO_ERROR;
      }

      FILE * temp;
      temp = fopen("temp", "w+");
      if (!temp) {
        perror("fopen");
        return FOPEN_ERROR;
      }

      // acquire lock
      if (flock(fd, LOCK_EX) < 0) {
        perror("flock (acquire)");
        return FLOCK_ERROR;
      }

      char *buf;
      size_t bufsize = 10;
      ssize_t read;

      buf = (char *)malloc(bufsize * sizeof(char));
      if (buf == NULL) {
        if (flock(fd, LOCK_UN) == -1) {
          perror("flock_release");
          return FLOCK_ERROR;
        }
        perror("malloc");
        return MALLOC_ERROR;
      }
        
      int existence = 0; // checks if the given PID is actually in the file
      while ((read = getline(&buf, &bufsize, pidfile)) > SUCCESS) {
        buf[strlen(buf) - 1] = '\0';

        if (strcmp(buf, pid) != SUCCESS) {
          if (fputs(buf, temp) == EOF) {
            // release lock
            if (flock(fd, LOCK_UN) == -1) {
              perror("flock_release");
              return FLOCK_ERROR;
            }
            perror("fputs");
            return FPUTS_ERROR;
          }
          if (fputc('\n', temp) == EOF) {
            // release lock
            if (flock(fd, LOCK_UN) == -1) {
              perror("flock_release");
              return FLOCK_ERROR;
            }
            perror("fputc");
            return FPUTC_ERROR;
          }
        }
        else {
            existence = 1;
        }
          
        if(fflush(temp)) {
          // release lock
          if (flock(fd, LOCK_UN) == -1) {
            perror("flock_release");
            return FLOCK_ERROR;
          }
          perror("fflush");
          return FFLUSH_ERROR;
        }
      }
      
      if (existence == 0) {
        if (printf("WARNING: %s%s", pid, " was not in .pids - no change made\n") < SUCCESS) {
          // release lock
          if (flock(fd, LOCK_UN) == -1) {
            perror("flock_release");
            return FLOCK_ERROR;
          }
          perror("printf");
          return PRINTF_ERROR;
        }
      }
        
      lseek(fileno(temp), 0, SEEK_SET);
      pidfile = freopen(".pids", "w", pidfile);
      while ((read = getline(&buf, &bufsize, temp)) > SUCCESS) {
        if (fputs(buf, pidfile) == EOF) {
          // release lock
          if (flock(fd, LOCK_UN) == -1) {
            perror("flock_release");
            return FLOCK_ERROR;
          }
          perror("fputs");
          return FPUTS_ERROR;
        }
      }

      if (flock(fd, LOCK_UN) < 0) {
        perror("flock_release");
        return FLOCK_ERROR;
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
        return REMOVE_PID_ERROR;
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
