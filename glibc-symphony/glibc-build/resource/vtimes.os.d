$(common-objpfx)resource/vtimes.os: \
 vtimes.c ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/generic/symbol-hacks.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h \
 ../include/sys/resource.h ../resource/sys/resource.h \
 ../include/features.h ../include/features-time64.h \
 ../sysdeps/unix/sysv/linux/features-time64.h \
 ../sysdeps/wordsize-32/bits/wordsize.h \
 ../sysdeps/unix/sysv/linux/arm/bits/timesize.h ../include/sys/cdefs.h \
 ../misc/sys/cdefs.h ../bits/long-double.h ../include/gnu/stubs.h \
 ../sysdeps/unix/sysv/linux/bits/resource.h ../include/bits/types.h \
 ../posix/bits/types.h ../bits/typesizes.h ../bits/time64.h \
 ../include/bits/types/struct_timeval.h \
 ../time/bits/types/struct_timeval.h \
 ../include/bits/types/struct_rusage.h \
 ../resource/bits/types/struct_rusage.h ../include/time.h ../time/time.h \
 ../sysdeps/unix/sysv/linux/bits/time.h \
 ../sysdeps/unix/sysv/linux/bits/timex.h ../include/bits/types/clock_t.h \
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
 ../locale/bits/types/__locale_t.h ../include/struct___timespec64.h \
 ../include/endian.h ../string/endian.h ../bits/byteswap.h \
 ../bits/uintn-identity.h ../include/struct___timeval64.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h \
 ../time/mktime-internal.h ../include/sys/time.h ../time/sys/time.h \
 ../include/sys/select.h ../misc/sys/select.h ../bits/select.h \
 ../include/bits/types/sigset_t.h ../signal/bits/types/sigset_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h \
 ../sysdeps/unix/sysv/linux/time-clockid.h ../include/stdint.h \
 ../stdlib/stdint.h ../bits/libc-header-start.h ../bits/wchar.h \
 ../bits/stdint-intn.h ../bits/stdint-uintn.h ../include/string.h \
 ../include/sys/types.h ../posix/sys/types.h \
 ../sysdeps/nptl/bits/pthreadtypes.h \
 ../sysdeps/nptl/bits/thread-shared-types.h \
 ../sysdeps/nptl/bits/pthreadtypes-arch.h \
 ../include/bits/atomic_wide_counter.h ../bits/atomic_wide_counter.h \
 ../sysdeps/nptl/bits/struct_mutex.h ../sysdeps/nptl/bits/struct_rwlock.h \
 ../include/locale.h ../locale/locale.h ../include/bits/locale.h \
 ../locale/bits/locale.h ../sysdeps/generic/string_private.h \
 ../string/string.h ../include/strings.h ../string/strings.h \
 ../include/shlib-compat.h \
 $(common-objpfx)abi-versions.h
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/generic/symbol-hacks.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h:
../include/sys/resource.h:
../resource/sys/resource.h:
../include/features.h:
../include/features-time64.h:
../sysdeps/unix/sysv/linux/features-time64.h:
../sysdeps/wordsize-32/bits/wordsize.h:
../sysdeps/unix/sysv/linux/arm/bits/timesize.h:
../include/sys/cdefs.h:
../misc/sys/cdefs.h:
../bits/long-double.h:
../include/gnu/stubs.h:
../sysdeps/unix/sysv/linux/bits/resource.h:
../include/bits/types.h:
../posix/bits/types.h:
../bits/typesizes.h:
../bits/time64.h:
../include/bits/types/struct_timeval.h:
../time/bits/types/struct_timeval.h:
../include/bits/types/struct_rusage.h:
../resource/bits/types/struct_rusage.h:
../include/time.h:
../time/time.h:
../sysdeps/unix/sysv/linux/bits/time.h:
../sysdeps/unix/sysv/linux/bits/timex.h:
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
../include/struct___timespec64.h:
../include/endian.h:
../string/endian.h:
../bits/byteswap.h:
../bits/uintn-identity.h:
../include/struct___timeval64.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h:
../time/mktime-internal.h:
../include/sys/time.h:
../time/sys/time.h:
../include/sys/select.h:
../misc/sys/select.h:
../bits/select.h:
../include/bits/types/sigset_t.h:
../signal/bits/types/sigset_t.h:
../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h:
../sysdeps/unix/sysv/linux/time-clockid.h:
../include/stdint.h:
../stdlib/stdint.h:
../bits/libc-header-start.h:
../bits/wchar.h:
../bits/stdint-intn.h:
../bits/stdint-uintn.h:
../include/string.h:
../include/sys/types.h:
../posix/sys/types.h:
../sysdeps/nptl/bits/pthreadtypes.h:
../sysdeps/nptl/bits/thread-shared-types.h:
../sysdeps/nptl/bits/pthreadtypes-arch.h:
../include/bits/atomic_wide_counter.h:
../bits/atomic_wide_counter.h:
../sysdeps/nptl/bits/struct_mutex.h:
../sysdeps/nptl/bits/struct_rwlock.h:
../include/locale.h:
../locale/locale.h:
../include/bits/locale.h:
../locale/bits/locale.h:
../sysdeps/generic/string_private.h:
../string/string.h:
../include/strings.h:
../string/strings.h:
../include/shlib-compat.h:
$(common-objpfx)abi-versions.h:
