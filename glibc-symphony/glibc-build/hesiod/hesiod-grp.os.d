$(common-objpfx)hesiod/hesiod-grp.os: \
 nss_hesiod/hesiod-grp.c ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/generic/symbol-hacks.h \
 ../include/ctype.h ../ctype/ctype.h ../include/features.h \
 ../include/features-time64.h \
 ../sysdeps/unix/sysv/linux/features-time64.h \
 ../sysdeps/wordsize-32/bits/wordsize.h \
 ../sysdeps/unix/sysv/linux/arm/bits/timesize.h ../include/sys/cdefs.h \
 ../misc/sys/cdefs.h ../bits/long-double.h ../include/gnu/stubs.h \
 ../include/bits/types.h ../posix/bits/types.h ../bits/typesizes.h \
 ../bits/time64.h ../include/bits/endian.h ../string/bits/endian.h \
 ../sysdeps/arm/bits/endianness.h ../include/bits/types/locale_t.h \
 ../locale/bits/types/locale_t.h ../include/bits/types/__locale_t.h \
 ../locale/bits/types/__locale_t.h ../include/errno.h ../stdlib/errno.h \
 ../sysdeps/unix/sysv/linux/bits/errno.h /usr/include/linux/errno.h \
 /usr/include/arm-linux-gnueabihf/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
 ../bits/types/error_t.h ../include/grp.h ../grp/grp.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h \
 ../include/bits/types/FILE.h ../libio/bits/types/FILE.h hesiod.h \
 ../include/nss.h ../nss/nss.h ../include/stdint.h ../stdlib/stdint.h \
 ../bits/libc-header-start.h ../bits/wchar.h ../bits/stdint-intn.h \
 ../bits/stdint-uintn.h ../include/sys/types.h ../posix/sys/types.h \
 ../include/bits/types/clock_t.h ../time/bits/types/clock_t.h \
 ../include/bits/types/clockid_t.h ../time/bits/types/clockid_t.h \
 ../include/bits/types/time_t.h ../time/bits/types/time_t.h \
 ../include/bits/types/timer_t.h ../time/bits/types/timer_t.h \
 ../include/endian.h ../string/endian.h ../bits/byteswap.h \
 ../bits/uintn-identity.h ../include/sys/select.h ../misc/sys/select.h \
 ../bits/select.h ../include/bits/types/sigset_t.h \
 ../signal/bits/types/sigset_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h \
 ../include/bits/types/struct_timeval.h \
 ../time/bits/types/struct_timeval.h \
 ../include/bits/types/struct_timespec.h \
 ../time/bits/types/struct_timespec.h ../include/struct___timespec64.h \
 ../include/struct___timeval64.h ../sysdeps/nptl/bits/pthreadtypes.h \
 ../sysdeps/nptl/bits/thread-shared-types.h \
 ../sysdeps/nptl/bits/pthreadtypes-arch.h \
 ../include/bits/atomic_wide_counter.h ../bits/atomic_wide_counter.h \
 ../sysdeps/nptl/bits/struct_mutex.h ../sysdeps/nptl/bits/struct_rwlock.h \
 ../include/stdio.h ../bits/floatn.h ../bits/floatn-common.h \
 ../libio/stdio.h /usr/lib/gcc/arm-linux-gnueabihf/10/include/stdarg.h \
 ../include/bits/types/__fpos_t.h ../libio/bits/types/__fpos_t.h \
 ../include/bits/types/__mbstate_t.h ../wcsmbs/bits/types/__mbstate_t.h \
 ../include/bits/types/__fpos64_t.h ../libio/bits/types/__fpos64_t.h \
 ../include/bits/types/__FILE.h ../libio/bits/types/__FILE.h \
 ../include/bits/types/struct_FILE.h ../libio/bits/types/struct_FILE.h \
 ../include/bits/types/cookie_io_functions_t.h \
 ../libio/bits/types/cookie_io_functions_t.h \
 $(common-objpfx)bits/stdio_lim.h \
 ../include/bits/stdio.h ../libio/bits/stdio.h ../libio/libio.h \
 ../include/bits/types/wint_t.h ../wcsmbs/bits/types/wint_t.h \
 ../include/gconv.h ../iconv/gconv.h ../include/shlib-compat.h \
 $(common-objpfx)abi-versions.h \
 ../include/stdlib.h ../stdlib/stdlib.h \
 ../sysdeps/unix/sysv/linux/bits/waitflags.h ../bits/waitstatus.h \
 ../include/alloca.h ../stdlib/alloca.h ../include/stackinfo.h \
 ../sysdeps/arm/stackinfo.h ../include/elf.h ../elf/elf.h \
 ../include/libc-pointer-arith.h ../sysdeps/generic/dl-dtprocnum.h \
 ../sysdeps/pthread/allocalim.h ../include/limits.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/limits.h \
 ../include/bits/posix1_lim.h ../posix/bits/posix1_lim.h \
 ../sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h \
 ../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h \
 ../sysdeps/unix/sysv/linux/bits/pthread_stack_min.h \
 ../include/bits/posix2_lim.h ../posix/bits/posix2_lim.h \
 ../include/bits/xopen_lim.h ../sysdeps/unix/sysv/linux/bits/uio_lim.h \
 ../bits/stdlib-bsearch.h ../include/bits/stdlib-float.h \
 ../stdlib/bits/stdlib-float.h ../include/sys/stat.h ../io/sys/stat.h \
 ../sysdeps/unix/sysv/linux/bits/stat.h \
 ../sysdeps/unix/sysv/linux/bits/struct_stat.h \
 ../sysdeps/unix/sysv/linux/bits/struct_stat_time64_helper.h \
 ../include/bits/statx.h ../io/bits/statx.h \
 ../include/bits/statx-generic.h ../io/bits/statx-generic.h \
 ../include/bits/types/struct_statx_timestamp.h \
 ../io/bits/types/struct_statx_timestamp.h \
 ../include/bits/types/struct_statx.h ../io/bits/types/struct_statx.h \
 ../sysdeps/unix/sysv/linux/xstatver.h \
 ../sysdeps/unix/sysv/linux/struct_stat_time64.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h \
 ../include/rtld-malloc.h ../include/string.h ../include/locale.h \
 ../locale/locale.h ../include/bits/locale.h ../locale/bits/locale.h \
 ../sysdeps/generic/string_private.h ../string/string.h \
 ../include/strings.h ../string/strings.h ../include/sys/param.h \
 ../misc/sys/param.h ../include/signal.h ../signal/signal.h \
 ../bits/signum-generic.h ../sysdeps/unix/sysv/linux/bits/signum-arch.h \
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
 ../sysdeps/unix/sysv/linux/bits/ss_flags.h \
 ../include/bits/types/struct_sigstack.h \
 ../signal/bits/types/struct_sigstack.h \
 ../sysdeps/pthread/bits/sigthread.h \
 ../sysdeps/unix/sysv/linux/bits/signal_ext.h \
 ../sysdeps/unix/sysv/linux/sigsetops.h \
 ../sysdeps/unix/sysv/linux/bits/param.h /usr/include/linux/param.h \
 /usr/include/arm-linux-gnueabihf/asm/param.h \
 /usr/include/asm-generic/param.h ../nss/nss_files/files-parse.c \
 ../include/nss_files.h ../nss/function.def
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/generic/symbol-hacks.h:
../include/ctype.h:
../ctype/ctype.h:
../include/features.h:
../include/features-time64.h:
../sysdeps/unix/sysv/linux/features-time64.h:
../sysdeps/wordsize-32/bits/wordsize.h:
../sysdeps/unix/sysv/linux/arm/bits/timesize.h:
../include/sys/cdefs.h:
../misc/sys/cdefs.h:
../bits/long-double.h:
../include/gnu/stubs.h:
../include/bits/types.h:
../posix/bits/types.h:
../bits/typesizes.h:
../bits/time64.h:
../include/bits/endian.h:
../string/bits/endian.h:
../sysdeps/arm/bits/endianness.h:
../include/bits/types/locale_t.h:
../locale/bits/types/locale_t.h:
../include/bits/types/__locale_t.h:
../locale/bits/types/__locale_t.h:
../include/errno.h:
../stdlib/errno.h:
../sysdeps/unix/sysv/linux/bits/errno.h:
/usr/include/linux/errno.h:
/usr/include/arm-linux-gnueabihf/asm/errno.h:
/usr/include/asm-generic/errno.h:
/usr/include/asm-generic/errno-base.h:
../bits/types/error_t.h:
../include/grp.h:
../grp/grp.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h:
../include/bits/types/FILE.h:
../libio/bits/types/FILE.h:
hesiod.h:
../include/nss.h:
../nss/nss.h:
../include/stdint.h:
../stdlib/stdint.h:
../bits/libc-header-start.h:
../bits/wchar.h:
../bits/stdint-intn.h:
../bits/stdint-uintn.h:
../include/sys/types.h:
../posix/sys/types.h:
../include/bits/types/clock_t.h:
../time/bits/types/clock_t.h:
../include/bits/types/clockid_t.h:
../time/bits/types/clockid_t.h:
../include/bits/types/time_t.h:
../time/bits/types/time_t.h:
../include/bits/types/timer_t.h:
../time/bits/types/timer_t.h:
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
../include/bits/types/struct_timeval.h:
../time/bits/types/struct_timeval.h:
../include/bits/types/struct_timespec.h:
../time/bits/types/struct_timespec.h:
../include/struct___timespec64.h:
../include/struct___timeval64.h:
../sysdeps/nptl/bits/pthreadtypes.h:
../sysdeps/nptl/bits/thread-shared-types.h:
../sysdeps/nptl/bits/pthreadtypes-arch.h:
../include/bits/atomic_wide_counter.h:
../bits/atomic_wide_counter.h:
../sysdeps/nptl/bits/struct_mutex.h:
../sysdeps/nptl/bits/struct_rwlock.h:
../include/stdio.h:
../bits/floatn.h:
../bits/floatn-common.h:
../libio/stdio.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stdarg.h:
../include/bits/types/__fpos_t.h:
../libio/bits/types/__fpos_t.h:
../include/bits/types/__mbstate_t.h:
../wcsmbs/bits/types/__mbstate_t.h:
../include/bits/types/__fpos64_t.h:
../libio/bits/types/__fpos64_t.h:
../include/bits/types/__FILE.h:
../libio/bits/types/__FILE.h:
../include/bits/types/struct_FILE.h:
../libio/bits/types/struct_FILE.h:
../include/bits/types/cookie_io_functions_t.h:
../libio/bits/types/cookie_io_functions_t.h:
$(common-objpfx)bits/stdio_lim.h:
../include/bits/stdio.h:
../libio/bits/stdio.h:
../libio/libio.h:
../include/bits/types/wint_t.h:
../wcsmbs/bits/types/wint_t.h:
../include/gconv.h:
../iconv/gconv.h:
../include/shlib-compat.h:
$(common-objpfx)abi-versions.h:
../include/stdlib.h:
../stdlib/stdlib.h:
../sysdeps/unix/sysv/linux/bits/waitflags.h:
../bits/waitstatus.h:
../include/alloca.h:
../stdlib/alloca.h:
../include/stackinfo.h:
../sysdeps/arm/stackinfo.h:
../include/elf.h:
../elf/elf.h:
../include/libc-pointer-arith.h:
../sysdeps/generic/dl-dtprocnum.h:
../sysdeps/pthread/allocalim.h:
../include/limits.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/limits.h:
../include/bits/posix1_lim.h:
../posix/bits/posix1_lim.h:
../sysdeps/unix/sysv/linux/bits/local_lim.h:
/usr/include/linux/limits.h:
../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h:
../sysdeps/unix/sysv/linux/bits/pthread_stack_min.h:
../include/bits/posix2_lim.h:
../posix/bits/posix2_lim.h:
../include/bits/xopen_lim.h:
../sysdeps/unix/sysv/linux/bits/uio_lim.h:
../bits/stdlib-bsearch.h:
../include/bits/stdlib-float.h:
../stdlib/bits/stdlib-float.h:
../include/sys/stat.h:
../io/sys/stat.h:
../sysdeps/unix/sysv/linux/bits/stat.h:
../sysdeps/unix/sysv/linux/bits/struct_stat.h:
../sysdeps/unix/sysv/linux/bits/struct_stat_time64_helper.h:
../include/bits/statx.h:
../io/bits/statx.h:
../include/bits/statx-generic.h:
../io/bits/statx-generic.h:
../include/bits/types/struct_statx_timestamp.h:
../io/bits/types/struct_statx_timestamp.h:
../include/bits/types/struct_statx.h:
../io/bits/types/struct_statx.h:
../sysdeps/unix/sysv/linux/xstatver.h:
../sysdeps/unix/sysv/linux/struct_stat_time64.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h:
../include/rtld-malloc.h:
../include/string.h:
../include/locale.h:
../locale/locale.h:
../include/bits/locale.h:
../locale/bits/locale.h:
../sysdeps/generic/string_private.h:
../string/string.h:
../include/strings.h:
../string/strings.h:
../include/sys/param.h:
../misc/sys/param.h:
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
../sysdeps/unix/sysv/linux/bits/ss_flags.h:
../include/bits/types/struct_sigstack.h:
../signal/bits/types/struct_sigstack.h:
../sysdeps/pthread/bits/sigthread.h:
../sysdeps/unix/sysv/linux/bits/signal_ext.h:
../sysdeps/unix/sysv/linux/sigsetops.h:
../sysdeps/unix/sysv/linux/bits/param.h:
/usr/include/linux/param.h:
/usr/include/arm-linux-gnueabihf/asm/param.h:
/usr/include/asm-generic/param.h:
../nss/nss_files/files-parse.c:
../include/nss_files.h:
../nss/function.def:
