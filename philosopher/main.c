#include "lib.h"
#include "types.h"

int main(void) {
	// TODO in lab4
	printf("philosopher\n");
	char buffer[100];
	read(SH_MEM,buffer,10,10);
	printf("buffer:%s\n",buffer);
	exit();
	return 0;
}
