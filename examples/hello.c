#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

int main(){
	//Print PID, then wait for user input
	printf("PID: %d\n", getpid());
	getc(stdin);

/*	int fd = open("foo", O_CREAT, 0);
	if(fd == -1)
	{
		perror("open");
		return 1;
	}*/

// 	sleep(1);
	if(close(123) < 0)
	{
		perror("close");
		return 1;
	}
	return 0;
}
