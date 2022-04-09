
#include "pid_user_tools.h"


int add_pid(void)
{
	pid_t pid = getpid();
	return 0;
}


int remove_pid(void)
{
	return 0;
}


int pid_exists(void)
{
	pid_t pid = getpid();	
	int pid_fd = syscall(__NR_open, ".pids", O_RDONLY);

	char buffer[MAX_PID_LENGTH];



}

int main(void)
{
	fopen(NULL, NULL);
	return 0;
}

