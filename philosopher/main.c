#include "lib.h"
#include "types.h"
#define NUM 5
int main(void)
{
	// TODO in lab4
	printf("philosopher\n");
	sem_t _fork[NUM];
	for (int i = 0; i < NUM; ++i)
	{
		sem_init(&_fork[i], 1);
	}
	for (int i = 0; i < NUM; ++i)
	{
		int res = fork();
		while (res == 0)
		{
			printf("");
			if (i % 2 == 0)
			{
				sem_wait(&_fork[i]);
				sem_wait(&_fork[(i + 1) % NUM]);
			}
			else
			{
				sem_wait(&_fork[(i + 1) % NUM]);
				sem_wait(&_fork[i]);
			}
			printf("");
			sem_post(&_fork[i]);
			sem_post(&_fork[(i + 1) % NUM]);
		}
		if(res == -1){
			printf("fork failed.\n");
			exit();
		}
	}
	exit();
	return 0;
}
