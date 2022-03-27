#include <fcntl.h>

int main(){
	open("test", O_CREAT);
	return 0;
}
