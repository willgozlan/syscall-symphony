#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>


int main(void)
{
	printf("PID: %d\n", getpid());
	getc(stdin);

	free(NULL); 
	return 0;
}
