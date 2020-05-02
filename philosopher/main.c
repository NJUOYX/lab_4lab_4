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
		pid_t id = getpid();
		while (res == 0)
		{
			printf("philosopher %d is thinking.\n", id - 1);
			sleep(128);
			if (i % 2 == 0)
			{
				sem_wait(&_fork[i]);
				sleep(128);
				sem_wait(&_fork[(i + 1) % NUM]);
				sleep(128);
			}
			else
			{
				sem_wait(&_fork[(i + 1) % NUM]);
				sleep(128);
				sem_wait(&_fork[i]);
				sleep(128);
			}
			printf("philosopher %d is eating.\n", id - 1);
			sleep(128);
			sem_post(&_fork[i]);
			sleep(128);
			sem_post(&_fork[(i + 1) % NUM]);
			sleep(128);
		}
		if (res == -1)
		{
			printf("fork failed.\n");
			exit();
		}
	}
	exit();
	return 0;
}
