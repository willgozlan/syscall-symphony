#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>

int main(void)
{
	if(fork() < 0)
	{
		perror("fork");
		return 0;
	}
	return 0;
}
