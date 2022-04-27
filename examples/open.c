#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>

int main(void)
{
	printf("PID: %d\n", getpid());
	getc(stdin);

	if(open("test_file", O_CREAT) < 0)
	{
		perror("open");
		return 0;
	}
	return 0;
}
