#include "lib.h"
#include "types.h"

int main(void)
{
	// TODO in lab4
	printf("bounded_buffer\n");
	sem_t sem_full, sem_empty, sem_lock;
	sem_init(&sem_full, 4);
	sem_init(&sem_empty, 0);
	sem_init(&sem_lock, 1);
	int res = 0;
	for (int i = 0; i < 4; ++i)
	{
		res = fork();
		int x = 10;
		if (res == 0)
		{
			while (x--)
			{
				pid_t id = getpid();
				sem_wait(&sem_full);
				sleep(128);
				sem_wait(&sem_lock);
				sleep(128);
				printf("Producer %d: produce\n", id);
				sleep(128);
				sem_post(&sem_lock);
				sleep(128);
				sem_post(&sem_empty);
				sleep(128);
			}
			exit();
		}
		else if (res == -1)
		{
			printf("fork failed.\n");
			exit();
			return 0;
		}
	}
	while (res != 0 && res != -1)
	{
		sem_wait(&sem_empty);
		sleep(128);
		sem_wait(&sem_lock);
		sleep(128);
		printf("Consumer : consume\n");
		sleep(128);
		sem_post(&sem_lock);
		sleep(128);
		sem_post(&sem_full);
		sleep(128);
	}
	exit();
	return 0;
}
