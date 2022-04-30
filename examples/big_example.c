#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>

#define BUF_SIZE 50

int main(void)
{

	char add_pid_arg[BUF_SIZE];
	if(snprintf(add_pid_arg, BUF_SIZE, "/syscall-symphony/pid-tools/add_pid %d", getpid()) < 0)
	{
		perror("snprintf");
		return 2;
	}

	char remove_pid_arg[BUF_SIZE];
	if(snprintf(remove_pid_arg, BUF_SIZE, "/syscall-symphony/pid-tools/remove_pid %d", 
				getpid()) < 0)
	{
		perror("snprintf");
		return 2;
	}


	printf("Will envoke pid_user_tools as follows:\n");
	printf("%s\n", add_pid_arg);
	printf("%s\n", remove_pid_arg);

	if(system(add_pid_arg) < 0)
	{
		perror("system");
		return 3;
	}

	void* malloc_test = malloc(10);

	if(malloc_test == NULL)
	{
		perror("malloc");
		return 1;
	}

	free(malloc_test);

	if(system(remove_pid_arg) < 0)
	{
		perror("system");
		return 3;
	}

	return 0;
}
