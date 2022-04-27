#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>

int main(void)
{
	char* buf = "\n\n\n";

	printf("PID: %d\n", getpid());
	getc(stdin);

	if(write(0, buf, sizeof(buf)) < 0)
	{
		perror("write");
		return 0;
	}
	return 0;
}
