$(common-objpfx)timezone/zic.o: \
 zic.c ../include/stdc-predef.h \
 $(common-objpfx)config.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)timezone/version.h \
 private.h ../include/time.h ../time/time.h ../include/features.h \
 ../include/features-time64.h \
 ../sysdeps/unix/sysv/linux/features-time64.h \
 ../sysdeps/wordsize-32/bits/wordsize.h \
 ../sysdeps/unix/sysv/linux/arm/bits/timesize.h ../include/sys/cdefs.h \
 ../misc/sys/cdefs.h ../bits/long-double.h ../include/gnu/stubs.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h \
 ../sysdeps/unix/sysv/linux/bits/time.h ../include/bits/types.h \
 ../posix/bits/types.h ../bits/typesizes.h ../bits/time64.h \
 ../sysdeps/unix/sysv/linux/bits/timex.h \
 ../include/bits/types/struct_timeval.h \
 ../time/bits/types/struct_timeval.h ../include/bits/types/clock_t.h \
 ../time/bits/types/clock_t.h ../include/bits/types/time_t.h \
 ../time/bits/types/time_t.h ../include/bits/types/struct_tm.h \
 ../time/bits/types/struct_tm.h ../include/bits/types/struct_timespec.h \
 ../time/bits/types/struct_timespec.h ../include/bits/endian.h \
 ../string/bits/endian.h ../sysdeps/arm/bits/endianness.h \
 ../include/bits/types/clockid_t.h ../time/bits/types/clockid_t.h \
 ../include/bits/types/timer_t.h ../time/bits/types/timer_t.h \
 ../include/bits/types/struct_itimerspec.h \
 ../time/bits/types/struct_itimerspec.h ../include/bits/types/locale_t.h \
 ../locale/bits/types/locale_t.h ../include/bits/types/__locale_t.h \
 ../locale/bits/types/__locale_t.h ../include/sys/types.h \
 ../posix/sys/types.h ../bits/stdint-intn.h ../include/endian.h \
 ../string/endian.h ../bits/byteswap.h ../bits/uintn-identity.h \
 ../include/sys/select.h ../misc/sys/select.h ../bits/select.h \
 ../include/bits/types/sigset_t.h ../signal/bits/types/sigset_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h \
 ../sysdeps/nptl/bits/pthreadtypes.h \
 ../sysdeps/nptl/bits/thread-shared-types.h \
 ../sysdeps/nptl/bits/pthreadtypes-arch.h \
 ../include/bits/atomic_wide_counter.h ../bits/atomic_wide_counter.h \
 ../sysdeps/nptl/bits/struct_mutex.h ../sysdeps/nptl/bits/struct_rwlock.h \
 ../include/string.h ../string/string.h ../bits/libc-header-start.h \
 ../include/strings.h ../string/strings.h ../include/limits.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/limits.h \
 ../include/bits/posix1_lim.h ../posix/bits/posix1_lim.h \
 ../sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h \
 ../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h \
 ../sysdeps/unix/sysv/linux/bits/pthread_stack_min-dynamic.h \
 ../include/bits/posix2_lim.h ../posix/bits/posix2_lim.h \
 ../include/bits/xopen_lim.h ../sysdeps/unix/sysv/linux/bits/uio_lim.h \
 ../include/stdlib.h ../bits/floatn.h ../bits/floatn-common.h \
 ../stdlib/stdlib.h ../sysdeps/unix/sysv/linux/bits/waitflags.h \
 ../bits/waitstatus.h ../include/alloca.h ../stdlib/alloca.h \
 ../bits/stdlib-bsearch.h ../include/bits/stdlib-float.h \
 ../stdlib/bits/stdlib-float.h ../include/errno.h ../stdlib/errno.h \
 ../sysdeps/unix/sysv/linux/bits/errno.h /usr/include/linux/errno.h \
 /usr/include/arm-linux-gnueabihf/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
 ../bits/types/error_t.h ../include/libintl.h ../intl/libintl.h \
 ../include/locale.h ../locale/locale.h ../include/bits/locale.h \
 ../locale/bits/locale.h ../include/unistd.h ../posix/unistd.h \
 ../sysdeps/unix/sysv/linux/bits/posix_opt.h ../bits/environments.h \
 ../bits/confname.h ../include/bits/getopt_posix.h \
 ../posix/bits/getopt_posix.h ../include/bits/getopt_core.h \
 ../posix/bits/getopt_core.h ../include/bits/unistd_ext.h \
 ../sysdeps/unix/sysv/linux/bits/unistd_ext.h \
 /usr/include/linux/close_range.h ../include/stdint.h ../stdlib/stdint.h \
 ../bits/wchar.h ../bits/stdint-uintn.h ../include/inttypes.h \
 ../stdlib/inttypes.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h tzfile.h \
 ../include/fcntl.h ../io/fcntl.h \
 ../sysdeps/unix/sysv/linux/arm/bits/fcntl.h \
 ../sysdeps/unix/sysv/linux/bits/fcntl-linux.h \
 ../include/bits/types/struct_iovec.h ../misc/bits/types/struct_iovec.h \
 /usr/include/linux/falloc.h ../sysdeps/unix/sysv/linux/bits/stat.h \
 ../sysdeps/unix/sysv/linux/bits/struct_stat.h \
 ../sysdeps/unix/sysv/linux/bits/struct_stat_time64_helper.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stdarg.h ../include/stdio.h \
 ../libio/stdio.h ../include/bits/types/__fpos_t.h \
 ../libio/bits/types/__fpos_t.h ../include/bits/types/__mbstate_t.h \
 ../wcsmbs/bits/types/__mbstate_t.h ../include/bits/types/__fpos64_t.h \
 ../libio/bits/types/__fpos64_t.h ../include/bits/types/__FILE.h \
 ../libio/bits/types/__FILE.h ../include/bits/types/FILE.h \
 ../libio/bits/types/FILE.h ../include/bits/types/struct_FILE.h \
 ../libio/bits/types/struct_FILE.h \
 ../include/bits/types/cookie_io_functions_t.h \
 ../libio/bits/types/cookie_io_functions_t.h \
 $(common-objpfx)bits/stdio_lim.h \
 ../include/bits/stdio.h ../libio/bits/stdio.h ../include/sys/stat.h \
 ../io/sys/stat.h ../include/bits/statx.h ../io/bits/statx.h \
 ../include/bits/statx-generic.h ../io/bits/statx-generic.h \
 ../include/bits/types/struct_statx_timestamp.h \
 ../io/bits/types/struct_statx_timestamp.h \
 ../include/bits/types/struct_statx.h ../io/bits/types/struct_statx.h \
 ../include/sys/wait.h ../posix/sys/wait.h ../include/signal.h \
 ../signal/signal.h ../bits/signum-generic.h \
 ../sysdeps/unix/sysv/linux/bits/signum-arch.h \
 ../include/bits/types/sig_atomic_t.h ../signal/bits/types/sig_atomic_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/siginfo_t.h \
 ../include/bits/types/__sigval_t.h ../signal/bits/types/__sigval_t.h \
 ../sysdeps/unix/sysv/linux/bits/siginfo-arch.h \
 ../sysdeps/unix/sysv/linux/bits/siginfo-consts.h \
 ../sysdeps/unix/sysv/linux/bits/siginfo-consts-arch.h \
 ../include/bits/types/sigval_t.h ../signal/bits/types/sigval_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/sigevent_t.h \
 ../sysdeps/unix/sysv/linux/bits/sigevent-consts.h \
 ../sysdeps/unix/sysv/linux/bits/sigaction.h \
 ../sysdeps/unix/sysv/linux/bits/sigcontext.h \
 /usr/include/arm-linux-gnueabihf/asm/sigcontext.h \
 ../sysdeps/unix/sysv/linux/bits/types/stack_t.h \
 ../sysdeps/unix/sysv/linux/arm/sys/ucontext.h ../include/bits/sigstack.h \
 ../sysdeps/unix/sysv/linux/bits/sigstack.h ../include/bits/sigstksz.h \
 ../sysdeps/unix/sysv/linux/bits/sigstksz.h \
 ../sysdeps/unix/sysv/linux/bits/ss_flags.h \
 ../include/bits/types/struct_sigstack.h \
 ../signal/bits/types/struct_sigstack.h \
 ../sysdeps/pthread/bits/sigthread.h \
 ../sysdeps/unix/sysv/linux/bits/signal_ext.h
../include/stdc-predef.h:
$(common-objpfx)config.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)timezone/version.h:
private.h:
../include/time.h:
../time/time.h:
../include/features.h:
../include/features-time64.h:
../sysdeps/unix/sysv/linux/features-time64.h:
../sysdeps/wordsize-32/bits/wordsize.h:
../sysdeps/unix/sysv/linux/arm/bits/timesize.h:
../include/sys/cdefs.h:
../misc/sys/cdefs.h:
../bits/long-double.h:
../include/gnu/stubs.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h:
../sysdeps/unix/sysv/linux/bits/time.h:
../include/bits/types.h:
../posix/bits/types.h:
../bits/typesizes.h:
../bits/time64.h:
../sysdeps/unix/sysv/linux/bits/timex.h:
../include/bits/types/struct_timeval.h:
../time/bits/types/struct_timeval.h:
../include/bits/types/clock_t.h:
../time/bits/types/clock_t.h:
../include/bits/types/time_t.h:
../time/bits/types/time_t.h:
../include/bits/types/struct_tm.h:
../time/bits/types/struct_tm.h:
../include/bits/types/struct_timespec.h:
../time/bits/types/struct_timespec.h:
../include/bits/endian.h:
../string/bits/endian.h:
../sysdeps/arm/bits/endianness.h:
../include/bits/types/clockid_t.h:
../time/bits/types/clockid_t.h:
../include/bits/types/timer_t.h:
../time/bits/types/timer_t.h:
../include/bits/types/struct_itimerspec.h:
../time/bits/types/struct_itimerspec.h:
../include/bits/types/locale_t.h:
../locale/bits/types/locale_t.h:
../include/bits/types/__locale_t.h:
../locale/bits/types/__locale_t.h:
../include/sys/types.h:
../posix/sys/types.h:
../bits/stdint-intn.h:
../include/endian.h:
../string/endian.h:
../bits/byteswap.h:
../bits/uintn-identity.h:
../include/sys/select.h:
../misc/sys/select.h:
../bits/select.h:
../include/bits/types/sigset_t.h:
../signal/bits/types/sigset_t.h:
../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h:
../sysdeps/nptl/bits/pthreadtypes.h:
../sysdeps/nptl/bits/thread-shared-types.h:
../sysdeps/nptl/bits/pthreadtypes-arch.h:
../include/bits/atomic_wide_counter.h:
../bits/atomic_wide_counter.h:
../sysdeps/nptl/bits/struct_mutex.h:
../sysdeps/nptl/bits/struct_rwlock.h:
../include/string.h:
../string/string.h:
../bits/libc-header-start.h:
../include/strings.h:
../string/strings.h:
../include/limits.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/limits.h:
../include/bits/posix1_lim.h:
../posix/bits/posix1_lim.h:
../sysdeps/unix/sysv/linux/bits/local_lim.h:
/usr/include/linux/limits.h:
../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h:
../sysdeps/unix/sysv/linux/bits/pthread_stack_min-dynamic.h:
../include/bits/posix2_lim.h:
../posix/bits/posix2_lim.h:
../include/bits/xopen_lim.h:
../sysdeps/unix/sysv/linux/bits/uio_lim.h:
../include/stdlib.h:
../bits/floatn.h:
../bits/floatn-common.h:
../stdlib/stdlib.h:
../sysdeps/unix/sysv/linux/bits/waitflags.h:
../bits/waitstatus.h:
../include/alloca.h:
../stdlib/alloca.h:
../bits/stdlib-bsearch.h:
../include/bits/stdlib-float.h:
../stdlib/bits/stdlib-float.h:
../include/errno.h:
../stdlib/errno.h:
../sysdeps/unix/sysv/linux/bits/errno.h:
/usr/include/linux/errno.h:
/usr/include/arm-linux-gnueabihf/asm/errno.h:
/usr/include/asm-generic/errno.h:
/usr/include/asm-generic/errno-base.h:
../bits/types/error_t.h:
../include/libintl.h:
../intl/libintl.h:
../include/locale.h:
../locale/locale.h:
../include/bits/locale.h:
../locale/bits/locale.h:
../include/unistd.h:
../posix/unistd.h:
../sysdeps/unix/sysv/linux/bits/posix_opt.h:
../bits/environments.h:
../bits/confname.h:
../include/bits/getopt_posix.h:
../posix/bits/getopt_posix.h:
../include/bits/getopt_core.h:
../posix/bits/getopt_core.h:
../include/bits/unistd_ext.h:
../sysdeps/unix/sysv/linux/bits/unistd_ext.h:
/usr/include/linux/close_range.h:
../include/stdint.h:
../stdlib/stdint.h:
../bits/wchar.h:
../bits/stdint-uintn.h:
../include/inttypes.h:
../stdlib/inttypes.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h:
tzfile.h:
../include/fcntl.h:
../io/fcntl.h:
../sysdeps/unix/sysv/linux/arm/bits/fcntl.h:
../sysdeps/unix/sysv/linux/bits/fcntl-linux.h:
../include/bits/types/struct_iovec.h:
../misc/bits/types/struct_iovec.h:
/usr/include/linux/falloc.h:
../sysdeps/unix/sysv/linux/bits/stat.h:
../sysdeps/unix/sysv/linux/bits/struct_stat.h:
../sysdeps/unix/sysv/linux/bits/struct_stat_time64_helper.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stdarg.h:
../include/stdio.h:
../libio/stdio.h:
../include/bits/types/__fpos_t.h:
../libio/bits/types/__fpos_t.h:
../include/bits/types/__mbstate_t.h:
../wcsmbs/bits/types/__mbstate_t.h:
../include/bits/types/__fpos64_t.h:
../libio/bits/types/__fpos64_t.h:
../include/bits/types/__FILE.h:
../libio/bits/types/__FILE.h:
../include/bits/types/FILE.h:
../libio/bits/types/FILE.h:
../include/bits/types/struct_FILE.h:
../libio/bits/types/struct_FILE.h:
../include/bits/types/cookie_io_functions_t.h:
../libio/bits/types/cookie_io_functions_t.h:
$(common-objpfx)bits/stdio_lim.h:
../include/bits/stdio.h:
../libio/bits/stdio.h:
../include/sys/stat.h:
../io/sys/stat.h:
../include/bits/statx.h:
../io/bits/statx.h:
../include/bits/statx-generic.h:
../io/bits/statx-generic.h:
../include/bits/types/struct_statx_timestamp.h:
../io/bits/types/struct_statx_timestamp.h:
../include/bits/types/struct_statx.h:
../io/bits/types/struct_statx.h:
../include/sys/wait.h:
../posix/sys/wait.h:
../include/signal.h:
../signal/signal.h:
../bits/signum-generic.h:
../sysdeps/unix/sysv/linux/bits/signum-arch.h:
../include/bits/types/sig_atomic_t.h:
../signal/bits/types/sig_atomic_t.h:
../sysdeps/unix/sysv/linux/bits/types/siginfo_t.h:
../include/bits/types/__sigval_t.h:
../signal/bits/types/__sigval_t.h:
../sysdeps/unix/sysv/linux/bits/siginfo-arch.h:
../sysdeps/unix/sysv/linux/bits/siginfo-consts.h:
../sysdeps/unix/sysv/linux/bits/siginfo-consts-arch.h:
../include/bits/types/sigval_t.h:
../signal/bits/types/sigval_t.h:
../sysdeps/unix/sysv/linux/bits/types/sigevent_t.h:
../sysdeps/unix/sysv/linux/bits/sigevent-consts.h:
../sysdeps/unix/sysv/linux/bits/sigaction.h:
../sysdeps/unix/sysv/linux/bits/sigcontext.h:
/usr/include/arm-linux-gnueabihf/asm/sigcontext.h:
../sysdeps/unix/sysv/linux/bits/types/stack_t.h:
../sysdeps/unix/sysv/linux/arm/sys/ucontext.h:
../include/bits/sigstack.h:
../sysdeps/unix/sysv/linux/bits/sigstack.h:
../include/bits/sigstksz.h:
../sysdeps/unix/sysv/linux/bits/sigstksz.h:
../sysdeps/unix/sysv/linux/bits/ss_flags.h:
../include/bits/types/struct_sigstack.h:
../signal/bits/types/struct_sigstack.h:
../sysdeps/pthread/bits/sigthread.h:
../sysdeps/unix/sysv/linux/bits/signal_ext.h:
