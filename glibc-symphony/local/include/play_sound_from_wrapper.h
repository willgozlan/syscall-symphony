#pragma once
#include "play_sound.h"
#include "pid_exists.h"
#include <sys/types.h>
#include <unistd.h>
void play_sound_from_wrapper(int pid, int syscall);
