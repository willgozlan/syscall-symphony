/*
 * File Name: pid_exists.h
 * File Summary
 *  - Header file for pid_exists.c
 *  - Checks if the passed in PID is in the PID list.
 *  - Helper functions are also defined
 */

#pragma once

#define PID_FOUND 1
#define PID_NOT_FOUND 0

int pid_exists(int pid);
