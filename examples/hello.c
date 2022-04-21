#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

int main(){
	//Print PID, then wait for user input
	printf("PID: %d\n", getpid());
	getc(stdin);

	open("foo", O_CREAT, 0);
	return 0;
}
