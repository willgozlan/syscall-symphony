/* File: pid_exists_testing.c
 * Contains main to test if pid_exists works 
 */

#include "pid_exists.h"


int main(int argc, char **argv) {

    if (argc != 2) 
    {
        return 1;
    }

    printf("pid_exists returned %d\n", pid_exists(atoi(argv[1])));
    return 0;
}