#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>


int main(void)
{
	printf("PID: %d\n", getpid());
	getc(stdin);

	void* malloced_value = malloc(10);
	if(malloced_value == NULL)
	{
		perror("malloc");
		return 1;
	}
	free(malloced_value); 
	return 0;
}
