#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>

int main(void)
{
	char buf[50];

	printf("PID: %d\n", getpid());
	getc(stdin);

	if(read(0, buf, 50) < 0)
	{
		perror("read");
		return 0;
	}
	return 0;
}
