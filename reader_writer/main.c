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
			sleep(128);
			printf("pid = %d,write\n",id);
			sleep(128);
			sem_post(&write_mutex);
			sleep(128);
		}
	}
	for(int i = 0;i<3;++i){
		int res = fork();
		pid_t id = getpid();
		while(res == 0){
			sem_wait(&count_mutex);
			sleep(128);
			if(Rcount == 0)
				sem_wait(&write_mutex);
			sleep(128);
			++Rcount;
			sleep(128);
			sem_post(&count_mutex);
			sleep(128);
			printf("pid = %d,read.\n",id);
			sleep(128);
			sem_wait(&count_mutex);
			sleep(128);
			--Rcount;
			sleep(128);
			if(Rcount == 0)
				sem_post(&write_mutex);
			sleep(128);
			sem_post(&count_mutex);
			sleep(128);
		}
	}
	exit();
	return 0;
}
