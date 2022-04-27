#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>


int main(void)
{

	printf("PID: %d\n", getpid());
	getc(stdin);

	void* malloc_test = malloc(10);

	if(malloc_test == NULL)
	{
		perror("malloc");
		return 0;
	}
	return 0;
}
