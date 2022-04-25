/* Linux open syscall implementation, non-LFS.
   Copyright (C) 2017-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library.  If not, see
   <https://www.gnu.org/licenses/>.  */

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdarg.h>

// We added:
#include "../../../../misc/play_sound_from_wrapper.h"

#include <sysdep-cancel.h>

#ifndef __OFF_T_MATCHES_OFF64_T

/* Open FILE with access OFLAG.  If O_CREAT or O_TMPFILE is in OFLAG,
   a third argument is the file protection.  */
int
__libc_open (const char *file, int oflag, ...)
{
	int mode = 0;

	
	play_sound_from_wrapper(getpid(), OPEN);




/*	if(pid_exists(getpid()) == PID_FOUND)
	{
		if(system("/usr/bin/aplay /home/pi/syscall-symphony/sounds/open.wav") == -1)
		{
			printf("Unable to execute sound; system() failed...continuing to open()\n");
		}
	}*/

	if (__OPEN_NEEDS_MODE (oflag))
	{
		va_list arg;
		va_start (arg, oflag);
		mode = va_arg (arg, int);
		va_end (arg);
	}

	return SYSCALL_CANCEL (openat, AT_FDCWD, file, oflag, mode);
}
libc_hidden_def (__libc_open)

	weak_alias (__libc_open, __open)
	libc_hidden_weak (__open)
weak_alias (__libc_open, open)
#endif
