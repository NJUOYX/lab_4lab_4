#include "lib.h"
#include "types.h"

int main(void) {
	// TODO in lab4
	printf("reader_writer\n");
	sem_t write_mutex,count_mutex;
	int Rcount = 0;
	sem_init(&write_mutex,1);
	sem_init(&count_mutex,1);
	for(int i = 0;i<3;++i){
		int res = fork();
		pid_t id = getpid();
		while(res == 0){
			sem_wait(&write_mutex);
			printf("pid = %d,write\n",id);
			sem_post(&write_mutex);
		}
	}
	for(int i = 0;i<3;++i){
		int res = fork();
		pid_t id = getpid();
		while(res == 0){
			sem_wait(&count_mutex);
			if(Rcount == 0)
				sem_wait(&write_mutex);
			++Rcount;
			sem_post(&count_mutex);
			printf("pid = %d,read.\n",id);
			sem_wait(&count_mutex);
			--Rcount;
			if(Rcount == 0)
				sem_post(&write_mutex);
			sem_post(&count_mutex);
		}
	}
	exit();
	return 0;
}
