#include "lib.h"
#include "types.h"
uint32_t rdm = 0;

#define INTERUPT {rdm = random(256);sleep(rdm);}

int main(void)
{
	// TODO in lab4
	printf("bounded_buffer\n");
	sem_t sem_full, sem_empty, sem_lock;
	sem_init(&sem_full, 4);
	sem_init(&sem_empty, 0);
	sem_init(&sem_lock, 1);
	int res = 0;
	uint32_t rdm = 0;
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
				INTERUPT
				sem_wait(&sem_lock);
				INTERUPT
				printf("Producer %d: produce\n", id);
				INTERUPT;
				sem_post(&sem_lock);
				INTERUPT;
				sem_post(&sem_empty);
				INTERUPT;
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
		INTERUPT;
		sem_wait(&sem_lock);
		INTERUPT;
		printf("Consumer : consume\n");
		INTERUPT;
		sem_post(&sem_lock);
		INTERUPT;
		sem_post(&sem_full);
		INTERUPT;
	}
	exit();
	return 0;
}
