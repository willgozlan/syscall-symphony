#pragma once

#include <fcntl.h>

int readline (char *buf, int sz, const char *fn, off_t *offset);
