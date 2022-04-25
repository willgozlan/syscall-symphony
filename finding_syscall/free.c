#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>


int main(void)
{
	free(NULL); 
	return 0;
}
