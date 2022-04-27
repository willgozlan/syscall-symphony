#include <unistd.h>
#include <stdio.h>
#include <errno.h>

int main(void)
{
	printf("PID: %d\n", getpid());
	getc(stdin);

	if(close(0) < 0)
	{
		perror("close");
		return 0;
	}
	return 0;
}
