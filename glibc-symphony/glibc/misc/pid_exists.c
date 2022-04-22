#include "pid_exists.h"

/* Main function to check if a pid exists in our PID list.
 * Returning result of that, or unique error code
 */
int pid_exists(int pid)
{
    char line[BUF_SIZE] = {0};
    off_t offset = 0;
    int len = 0;

    // Using readline to read each line of file ".pids" into "line"
    while ((len = readline(line, BUF_SIZE, "/home/pi/syscall-symphony/pid-tools/.pids", &offset)) > 0)
    {
        // Check if PID is present on current line
        if(my_atoi(line) == pid)
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
