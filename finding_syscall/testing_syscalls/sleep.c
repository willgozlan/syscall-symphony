#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>

int main(void)
{
	printf("PID: %d\n", getpid());
	getc(stdin);

	sleep(1);
	return 0;
}
