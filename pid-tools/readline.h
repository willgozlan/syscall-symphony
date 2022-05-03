/* File Name: readline.h
 * File Summary: Header file for readline.c
 */

#pragma once

#include <fcntl.h>

int readline (char *buf, int sz, const char *fn, off_t *offset);
