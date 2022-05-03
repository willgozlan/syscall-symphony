/*
 * File Name: play_sound_from_wrapper.c
 * File Summary
 *  - Checks if the given PID has sound privileges
 *  - If it does, calls play_sound() with the given syscall
 */

#include <stdio.h>
#include "play_sound_from_wrapper.h"

#define SUCCESS 0

/*
 * Checks if the given PID has sound privileges
 * If it does, calls play_sound() with the given syscall
 * Returns success or a unique error value
 */
void play_sound_from_wrapper(int pid, int syscall)
{
	int pid_exists_ret = pid_exists(pid);
	if(pid_exists_ret == PID_FOUND)
	{
		if(play_sound(syscall) < SUCCESS)
		{
			printf("Unable to execute sound due to perror output above. Continuing to syscall.\n");
		}
	}
	else if(pid_exists_ret < SUCCESS)
	{
		printf("Unable to check PID list file due to error. See perror output above.\n");
	}	
}

