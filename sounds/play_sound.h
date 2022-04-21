#include<sys/wait.h>
#include<errno.h>
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include <linux/unistd.h>

#define READ 1
#define WRITE 2
#define OPEN 3
#define CLOSE 4
#define MALLOC 5
#define FREE 6
#define FORK 7
#define SLEEP 8

int play_sound(int sound);
