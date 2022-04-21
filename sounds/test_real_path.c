#include <limits.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char* argv[]) {
    char *resolved_path = realpath("test_real_path.c", NULL);
    if (resolved_path == NULL) {
        printf("OH NO!\n");
        return -1;
    }
    printf("%s\n", resolved_path);
    return 0;
}
