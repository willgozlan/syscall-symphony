#include <fcntl.h>

int main(){
	open("foo", O_CREAT, 0);
	return 0;
}
