#include "lib.h"
#include "types.h"

int main(void) {
	// TODO in lab4
	printf("bounded_buffer\n");
	uint8_t buffer[]="123456789";
	write(SH_MEM,(uint8_t*)buffer,10,10);
	exit();
	return 0;
}
