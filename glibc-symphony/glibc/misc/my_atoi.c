/* File Name: my_atoi.c
 * File Summary
 *  - Internal function to convert from string to integer.
 *  - Same usage as C's built in atoi() function, just doesn't call syscall wrapper
 *  - Adapted from: https://www.geeksforgeeks.org/write-your-own-atoi/
 */

#include "my_atoi.h"
#define INTEGER_BASE 10
int my_atoi(char *str)
{
    int res = 0;
    for (int i = 0; str[i] != '\0'; ++i)
    {
        res = res * INTEGER_BASE + str[i] - '0';
    }
    return res;
}
