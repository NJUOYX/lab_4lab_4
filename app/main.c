#include "lib.h"
#include "types.h"

int uEntry(void)
{
	char ch;
	while (1)
	{
		printf("Input: 1 for bounded_buffer\n       2 for philosopher\n       3 for reader_writer\n");
		scanf("%c", &ch);
		int res = 0;
		switch (ch)
		{
		case '1':
			res = fork();
			if (res != 0)
				exec("/usr/bounded_buffer", 0);
			break;
		case '2':
			res = fork();
			if (res != 0)
				exec("/usr/philosopher", 0);
			break;
		case '3':
			res = fork();
			if (res != 0)
				exec("/usr/reader_writer", 0);
			break;
		default:
			break;
		}
	}
	exit();
	return 0;
}
