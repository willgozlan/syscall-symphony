#pragma once

//#include <stdio.h>
#include <fcntl.h>
//#include <unistd.h>
//#include <sys/syscall.h>
#include <sys/file.h>
#include <fcntl.h>

int readline (char *buf, int sz, const char *fn, off_t *offset);

#define FLOCK_ERROR 1
