/*
 * File Name: pid_exists.c
 * File Summary:
 *  - Checks that given command line input is a reasonable PID and is not already in the .pids file
 *  - Adds it to the .pids file to mark it as having sound privileges
 */

#include "pid_exists.h"
#include "my_atoi.h"
#include "readline.h"
#define BUF_SIZE 10
#define END_OF_FILE -3

/* Main function to check if a pid exists in our PID list.
 * Returns result of that or unique error code
 */
int pid_exists(int pid)
{
    char line[BUF_SIZE] = {0};
    off_t offset = 0;
    int len = 0;

    // Using readline to read each line of file ".pids" into "line"
    while ((len = readline(line, BUF_SIZE, "/syscall-symphony/pid-tools/.pids", &offset)) > 0)
    {
        // Check if PID is present on current line
        if (my_atoi(line) == pid)
        {
            return PID_FOUND;
        }
    }
    // End of file reached
    if (len == END_OF_FILE)
    {
        return PID_NOT_FOUND;
    }
    // Otherwise, error, so return error code which is in len
    return len;
}
