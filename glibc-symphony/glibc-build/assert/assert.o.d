$(common-objpfx)assert/assert.o: assert.c \
 ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/generic/symbol-hacks.h \
 ../include/assert.h ../assert/assert.h ../include/features.h \
 ../include/features-time64.h \
 ../sysdeps/unix/sysv/linux/features-time64.h \
 ../sysdeps/wordsize-32/bits/wordsize.h \
 ../sysdeps/unix/sysv/linux/arm/bits/timesize.h ../include/sys/cdefs.h \
 ../misc/sys/cdefs.h ../bits/long-double.h ../include/gnu/stubs.h \
 ../include/atomic.h ../include/stdlib.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h ../bits/floatn.h \
 ../bits/floatn-common.h ../stdlib/stdlib.h ../bits/libc-header-start.h \
 ../sysdeps/unix/sysv/linux/bits/waitflags.h ../bits/waitstatus.h \
 ../include/bits/types/locale_t.h ../locale/bits/types/locale_t.h \
 ../include/bits/types/__locale_t.h ../locale/bits/types/__locale_t.h \
 ../include/sys/types.h ../posix/sys/types.h ../include/bits/types.h \
 ../posix/bits/types.h ../bits/typesizes.h ../bits/time64.h \
 ../include/bits/types/clock_t.h ../time/bits/types/clock_t.h \
 ../include/bits/types/clockid_t.h ../time/bits/types/clockid_t.h \
 ../include/bits/types/time_t.h ../time/bits/types/time_t.h \
 ../include/bits/types/timer_t.h ../time/bits/types/timer_t.h \
 ../bits/stdint-intn.h ../include/endian.h ../string/endian.h \
 ../include/bits/endian.h ../string/bits/endian.h \
 ../sysdeps/arm/bits/endianness.h ../bits/byteswap.h \
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
 ../include/alloca.h ../stdlib/alloca.h ../include/stackinfo.h \
 ../sysdeps/arm/stackinfo.h ../include/elf.h ../elf/elf.h \
 ../include/stdint.h ../stdlib/stdint.h ../bits/wchar.h \
 ../bits/stdint-uintn.h ../include/libc-pointer-arith.h \
 ../sysdeps/generic/dl-dtprocnum.h ../sysdeps/pthread/allocalim.h \
 ../include/limits.h /usr/lib/gcc/arm-linux-gnueabihf/10/include/limits.h \
 ../include/bits/posix1_lim.h ../posix/bits/posix1_lim.h \
 ../sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h \
 ../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h \
 ../sysdeps/unix/sysv/linux/bits/pthread_stack_min.h \
 ../include/bits/posix2_lim.h ../posix/bits/posix2_lim.h \
 ../include/bits/xopen_lim.h ../sysdeps/unix/sysv/linux/bits/uio_lim.h \
 ../bits/stdlib-bsearch.h ../include/bits/stdlib-float.h \
 ../stdlib/bits/stdlib-float.h ../include/sys/stat.h ../io/sys/stat.h \
 ../sysdeps/unix/sysv/linux/bits/stat.h \
 ../sysdeps/unix/sysv/linux/bits/struct_stat.h ../include/bits/statx.h \
 ../io/bits/statx.h ../include/bits/statx-generic.h \
 ../io/bits/statx-generic.h \
 ../include/bits/types/struct_statx_timestamp.h \
 ../io/bits/types/struct_statx_timestamp.h \
 ../include/bits/types/struct_statx.h ../io/bits/types/struct_statx.h \
 ../sysdeps/unix/sysv/linux/xstatver.h \
 ../sysdeps/unix/sysv/linux/struct_stat_time64.h \
 ../sysdeps/unix/sysv/linux/bits/struct_stat_time64_helper.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h \
 ../include/rtld-malloc.h ../sysdeps/unix/sysv/linux/arm/atomic-machine.h \
 ../sysdeps/arm/atomic-machine.h \
 ../sysdeps/unix/sysv/linux/arm/ldsodefs.h \
 ../sysdeps/unix/sysv/linux/ldsodefs.h ../sysdeps/gnu/ldsodefs.h \
 $(common-objpfx)libc-abis.h \
 ../include/string.h ../include/locale.h ../locale/locale.h \
 ../include/bits/locale.h ../locale/bits/locale.h \
 ../sysdeps/generic/string_private.h ../string/string.h \
 ../include/strings.h ../string/strings.h ../sysdeps/arm/ldsodefs.h \
 ../sysdeps/generic/ldsodefs.h ../include/dlfcn.h ../dlfcn/dlfcn.h \
 ../include/bits/dlfcn.h ../bits/dlfcn.h ../include/bits/dl_find_object.h \
 ../sysdeps/arm/bits/dl_find_object.h ../include/link.h ../elf/link.h \
 ../bits/elfclass.h ../sysdeps/arm/bits/link.h ../bits/link_lavcurrent.h \
 ../sysdeps/arm/linkmap.h ../sysdeps/posix/dl-fileid.h \
 ../sysdeps/arm/dl-lookupcfg.h ../sysdeps/generic/dl-lookupcfg.h \
 ../sysdeps/unix/sysv/linux/arm/tls.h ../sysdeps/arm/nptl/tls.h \
 ../sysdeps/unix/sysv/linux/dl-sysdep.h ../sysdeps/arm/dl-sysdep.h \
 ../sysdeps/generic/dl-sysdep.h ../sysdeps/generic/dl-dtv.h \
 ../nptl/descr.h ../include/sched.h ../posix/sched.h \
 ../sysdeps/unix/sysv/linux/bits/sched.h \
 ../bits/types/struct_sched_param.h ../include/bits/cpu-set.h \
 ../posix/bits/cpu-set.h ../include/setjmp.h ../setjmp/setjmp.h \
 ../sysdeps/arm/include/bits/setjmp.h ../sysdeps/arm/bits/setjmp.h \
 ../include/bits/types/struct___jmp_buf_tag.h \
 ../setjmp/bits/types/struct___jmp_buf_tag.h \
 ../sysdeps/generic/hp-timing.h ../include/time.h ../time/time.h \
 ../sysdeps/unix/sysv/linux/bits/time.h \
 ../sysdeps/unix/sysv/linux/bits/timex.h \
 ../include/bits/types/struct_tm.h ../time/bits/types/struct_tm.h \
 ../include/bits/types/struct_itimerspec.h \
 ../time/bits/types/struct_itimerspec.h ../time/mktime-internal.h \
 ../include/sys/time.h ../time/sys/time.h \
 ../sysdeps/unix/sysv/linux/time-clockid.h \
 ../sysdeps/generic/hp-timing-common.h ../include/sys/param.h \
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
 /usr/include/asm-generic/param.h ../sysdeps/generic/_itoa.h \
 ../include/list_t.h ../sysdeps/nptl/lowlevellock.h \
 ../sysdeps/pthread/elision-conf.h ../sysdeps/nptl/lowlevellock-futex.h \
 ../sysdeps/unix/sysv/linux/arm/sysdep.h \
 ../sysdeps/unix/sysv/linux/sysdep.h \
 ../sysdeps/unix/sysv/linux/arm/kernel-features.h \
 ../sysdeps/unix/sysv/linux/kernel-features.h ../include/errno.h \
 ../stdlib/errno.h ../sysdeps/unix/sysv/linux/bits/errno.h \
 /usr/include/linux/errno.h /usr/include/arm-linux-gnueabihf/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
 ../bits/types/error_t.h ../sysdeps/unix/arm/sysdep.h \
 ../sysdeps/unix/sysdep.h ../sysdeps/generic/sysdep.h \
 ../sysdeps/generic/dwarf2.h ../sysdeps/unix/sysv/linux/single-thread.h \
 ../sysdeps/unix/sysv/linux/include/sys/syscall.h \
 ../sysdeps/unix/sysv/linux/arm/arch-syscall.h ../sysdeps/arm/sysdep.h \
 ../sysdeps/unix/sysv/linux/arm/bits/hwcap.h \
 ../sysdeps/unix/sysv/linux/sysdep-cancel.h \
 ../sysdeps/arm/nptl/pthreaddef.h ../sysdeps/nptl/thread_db.h \
 ../include/pthread.h ../sysdeps/nptl/pthread.h \
 ../sysdeps/unix/sysv/linux/sys/procfs.h \
 ../sysdeps/unix/sysv/linux/arm/sys/user.h \
 ../sysdeps/unix/sysv/linux/arm/bits/procfs.h \
 ../sysdeps/unix/sysv/linux/arm/bits/procfs-id.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-prregset.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-extra.h ../sysdeps/arm/unwind.h \
 ../include/bits/types/res_state.h ../resolv/bits/types/res_state.h \
 ../include/netinet/in.h ../inet/netinet/in.h ../include/sys/socket.h \
 ../socket/sys/socket.h ../include/bits/types/struct_iovec.h \
 ../misc/bits/types/struct_iovec.h \
 ../sysdeps/unix/sysv/linux/bits/socket.h \
 ../sysdeps/unix/sysv/linux/bits/socket_type.h ../bits/sockaddr.h \
 /usr/include/arm-linux-gnueabihf/asm/socket.h \
 /usr/include/asm-generic/socket.h /usr/include/linux/posix_types.h \
 /usr/include/linux/stddef.h \
 /usr/include/arm-linux-gnueabihf/asm/posix_types.h \
 /usr/include/asm-generic/posix_types.h \
 /usr/include/arm-linux-gnueabihf/asm/bitsperlong.h \
 /usr/include/asm-generic/bitsperlong.h \
 /usr/include/arm-linux-gnueabihf/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 ../include/bits/types/struct_osockaddr.h \
 ../socket/bits/types/struct_osockaddr.h \
 ../sysdeps/unix/sysv/linux/bits/in.h \
 ../sysdeps/generic/tls-internal-struct.h \
 ../sysdeps/unix/sysv/linux/sys/rseq.h \
 ../sysdeps/unix/sysv/linux/arm/bits/rseq.h /usr/include/linux/rseq.h \
 /usr/include/linux/types.h /usr/include/arm-linux-gnueabihf/asm/types.h \
 /usr/include/asm-generic/int-ll64.h \
 /usr/include/arm-linux-gnueabihf/asm/byteorder.h \
 /usr/include/linux/byteorder/little_endian.h /usr/include/linux/swab.h \
 /usr/include/arm-linux-gnueabihf/asm/swab.h ../sysdeps/nptl/tcb-access.h \
 ../sysdeps/nptl/libc-lock.h ../sysdeps/nptl/libc-lockP.h \
 ../sysdeps/generic/link_map.h ../sysdeps/generic/dl-relocate-ld.h \
 ../include/fpu_control.h ../sysdeps/arm/fpu_control.h \
 ../include/sys/mman.h ../misc/sys/mman.h \
 ../sysdeps/unix/sysv/linux/bits/mman.h \
 ../sysdeps/unix/sysv/linux/bits/mman-map-flags-generic.h \
 ../sysdeps/unix/sysv/linux/bits/mman-linux.h \
 ../sysdeps/unix/sysv/linux/bits/mman-shared.h \
 ../sysdeps/generic/dl-fixup-attribute.h \
 ../sysdeps/generic/dl-procruntime.c \
 ../sysdeps/unix/sysv/linux/arm/dl-procinfo.c \
 ../sysdeps/unix/sysv/linux/dl-vdso-setup.c ../include/libintl.h \
 ../intl/libintl.h ../include/stdio.h ../libio/stdio.h \
 /usr/lib/gcc/arm-linux-gnueabihf/10/include/stdarg.h \
 ../include/bits/types/__fpos_t.h ../libio/bits/types/__fpos_t.h \
 ../include/bits/types/__mbstate_t.h ../wcsmbs/bits/types/__mbstate_t.h \
 ../include/bits/types/__fpos64_t.h ../libio/bits/types/__fpos64_t.h \
 ../include/bits/types/__FILE.h ../libio/bits/types/__FILE.h \
 ../include/bits/types/FILE.h ../libio/bits/types/FILE.h \
 ../include/bits/types/struct_FILE.h ../libio/bits/types/struct_FILE.h \
 ../include/bits/types/cookie_io_functions_t.h \
 ../libio/bits/types/cookie_io_functions_t.h \
 $(common-objpfx)bits/stdio_lim.h \
 ../include/bits/stdio.h ../libio/bits/stdio.h ../libio/libio.h \
 ../include/bits/types/wint_t.h ../wcsmbs/bits/types/wint_t.h \
 ../include/gconv.h ../iconv/gconv.h ../include/shlib-compat.h \
 $(common-objpfx)abi-versions.h \
 ../include/unistd.h ../posix/unistd.h \
 ../sysdeps/unix/sysv/linux/bits/posix_opt.h ../bits/environments.h \
 ../bits/confname.h ../include/bits/getopt_posix.h \
 ../posix/bits/getopt_posix.h ../include/bits/getopt_core.h \
 ../posix/bits/getopt_core.h ../include/bits/unistd_ext.h \
 ../sysdeps/unix/sysv/linux/bits/unistd_ext.h \
 /usr/include/linux/close_range.h ../include/wchar.h ../wcsmbs/wchar.h \
 ../include/bits/types/mbstate_t.h ../wcsmbs/bits/types/mbstate_t.h \
 ../libio/iolibio.h ../sysdeps/unix/sysv/linux/fatal-prepare.h
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/generic/symbol-hacks.h:
../include/assert.h:
../assert/assert.h:
../include/features.h:
../include/features-time64.h:
../sysdeps/unix/sysv/linux/features-time64.h:
../sysdeps/wordsize-32/bits/wordsize.h:
../sysdeps/unix/sysv/linux/arm/bits/timesize.h:
../include/sys/cdefs.h:
../misc/sys/cdefs.h:
../bits/long-double.h:
../include/gnu/stubs.h:
../include/atomic.h:
../include/stdlib.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stddef.h:
../bits/floatn.h:
../bits/floatn-common.h:
../stdlib/stdlib.h:
../bits/libc-header-start.h:
../sysdeps/unix/sysv/linux/bits/waitflags.h:
../bits/waitstatus.h:
../include/bits/types/locale_t.h:
../locale/bits/types/locale_t.h:
../include/bits/types/__locale_t.h:
../locale/bits/types/__locale_t.h:
../include/sys/types.h:
../posix/sys/types.h:
../include/bits/types.h:
../posix/bits/types.h:
../bits/typesizes.h:
../bits/time64.h:
../include/bits/types/clock_t.h:
../time/bits/types/clock_t.h:
../include/bits/types/clockid_t.h:
../time/bits/types/clockid_t.h:
../include/bits/types/time_t.h:
../time/bits/types/time_t.h:
../include/bits/types/timer_t.h:
../time/bits/types/timer_t.h:
../bits/stdint-intn.h:
../include/endian.h:
../string/endian.h:
../include/bits/endian.h:
../string/bits/endian.h:
../sysdeps/arm/bits/endianness.h:
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
../include/alloca.h:
../stdlib/alloca.h:
../include/stackinfo.h:
../sysdeps/arm/stackinfo.h:
../include/elf.h:
../elf/elf.h:
../include/stdint.h:
../stdlib/stdint.h:
../bits/wchar.h:
../bits/stdint-uintn.h:
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
../sysdeps/unix/sysv/linux/bits/struct_stat_time64_helper.h:
/usr/lib/gcc/arm-linux-gnueabihf/10/include/stdbool.h:
../include/rtld-malloc.h:
../sysdeps/unix/sysv/linux/arm/atomic-machine.h:
../sysdeps/arm/atomic-machine.h:
../sysdeps/unix/sysv/linux/arm/ldsodefs.h:
../sysdeps/unix/sysv/linux/ldsodefs.h:
../sysdeps/gnu/ldsodefs.h:
$(common-objpfx)libc-abis.h:
../include/string.h:
../include/locale.h:
../locale/locale.h:
../include/bits/locale.h:
../locale/bits/locale.h:
../sysdeps/generic/string_private.h:
../string/string.h:
../include/strings.h:
../string/strings.h:
../sysdeps/arm/ldsodefs.h:
../sysdeps/generic/ldsodefs.h:
../include/dlfcn.h:
../dlfcn/dlfcn.h:
../include/bits/dlfcn.h:
../bits/dlfcn.h:
../include/bits/dl_find_object.h:
../sysdeps/arm/bits/dl_find_object.h:
../include/link.h:
../elf/link.h:
../bits/elfclass.h:
../sysdeps/arm/bits/link.h:
../bits/link_lavcurrent.h:
../sysdeps/arm/linkmap.h:
../sysdeps/posix/dl-fileid.h:
../sysdeps/arm/dl-lookupcfg.h:
../sysdeps/generic/dl-lookupcfg.h:
../sysdeps/unix/sysv/linux/arm/tls.h:
../sysdeps/arm/nptl/tls.h:
../sysdeps/unix/sysv/linux/dl-sysdep.h:
../sysdeps/arm/dl-sysdep.h:
../sysdeps/generic/dl-sysdep.h:
../sysdeps/generic/dl-dtv.h:
../nptl/descr.h:
../include/sched.h:
../posix/sched.h:
../sysdeps/unix/sysv/linux/bits/sched.h:
../bits/types/struct_sched_param.h:
../include/bits/cpu-set.h:
../posix/bits/cpu-set.h:
../include/setjmp.h:
../setjmp/setjmp.h:
../sysdeps/arm/include/bits/setjmp.h:
../sysdeps/arm/bits/setjmp.h:
../include/bits/types/struct___jmp_buf_tag.h:
../setjmp/bits/types/struct___jmp_buf_tag.h:
../sysdeps/generic/hp-timing.h:
../include/time.h:
../time/time.h:
../sysdeps/unix/sysv/linux/bits/time.h:
../sysdeps/unix/sysv/linux/bits/timex.h:
../include/bits/types/struct_tm.h:
../time/bits/types/struct_tm.h:
../include/bits/types/struct_itimerspec.h:
../time/bits/types/struct_itimerspec.h:
../time/mktime-internal.h:
../include/sys/time.h:
../time/sys/time.h:
../sysdeps/unix/sysv/linux/time-clockid.h:
../sysdeps/generic/hp-timing-common.h:
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
../sysdeps/generic/_itoa.h:
../include/list_t.h:
../sysdeps/nptl/lowlevellock.h:
../sysdeps/pthread/elision-conf.h:
../sysdeps/nptl/lowlevellock-futex.h:
../sysdeps/unix/sysv/linux/arm/sysdep.h:
../sysdeps/unix/sysv/linux/sysdep.h:
../sysdeps/unix/sysv/linux/arm/kernel-features.h:
../sysdeps/unix/sysv/linux/kernel-features.h:
../include/errno.h:
../stdlib/errno.h:
../sysdeps/unix/sysv/linux/bits/errno.h:
/usr/include/linux/errno.h:
/usr/include/arm-linux-gnueabihf/asm/errno.h:
/usr/include/asm-generic/errno.h:
/usr/include/asm-generic/errno-base.h:
../bits/types/error_t.h:
../sysdeps/unix/arm/sysdep.h:
../sysdeps/unix/sysdep.h:
../sysdeps/generic/sysdep.h:
../sysdeps/generic/dwarf2.h:
../sysdeps/unix/sysv/linux/single-thread.h:
../sysdeps/unix/sysv/linux/include/sys/syscall.h:
../sysdeps/unix/sysv/linux/arm/arch-syscall.h:
../sysdeps/arm/sysdep.h:
../sysdeps/unix/sysv/linux/arm/bits/hwcap.h:
../sysdeps/unix/sysv/linux/sysdep-cancel.h:
../sysdeps/arm/nptl/pthreaddef.h:
../sysdeps/nptl/thread_db.h:
../include/pthread.h:
../sysdeps/nptl/pthread.h:
../sysdeps/unix/sysv/linux/sys/procfs.h:
../sysdeps/unix/sysv/linux/arm/sys/user.h:
../sysdeps/unix/sysv/linux/arm/bits/procfs.h:
../sysdeps/unix/sysv/linux/arm/bits/procfs-id.h:
../sysdeps/unix/sysv/linux/bits/procfs-prregset.h:
../sysdeps/unix/sysv/linux/bits/procfs-extra.h:
../sysdeps/arm/unwind.h:
../include/bits/types/res_state.h:
../resolv/bits/types/res_state.h:
../include/netinet/in.h:
../inet/netinet/in.h:
../include/sys/socket.h:
../socket/sys/socket.h:
../include/bits/types/struct_iovec.h:
../misc/bits/types/struct_iovec.h:
../sysdeps/unix/sysv/linux/bits/socket.h:
../sysdeps/unix/sysv/linux/bits/socket_type.h:
../bits/sockaddr.h:
/usr/include/arm-linux-gnueabihf/asm/socket.h:
/usr/include/asm-generic/socket.h:
/usr/include/linux/posix_types.h:
/usr/include/linux/stddef.h:
/usr/include/arm-linux-gnueabihf/asm/posix_types.h:
/usr/include/asm-generic/posix_types.h:
/usr/include/arm-linux-gnueabihf/asm/bitsperlong.h:
/usr/include/asm-generic/bitsperlong.h:
/usr/include/arm-linux-gnueabihf/asm/sockios.h:
/usr/include/asm-generic/sockios.h:
../include/bits/types/struct_osockaddr.h:
../socket/bits/types/struct_osockaddr.h:
../sysdeps/unix/sysv/linux/bits/in.h:
../sysdeps/generic/tls-internal-struct.h:
../sysdeps/unix/sysv/linux/sys/rseq.h:
../sysdeps/unix/sysv/linux/arm/bits/rseq.h:
/usr/include/linux/rseq.h:
/usr/include/linux/types.h:
/usr/include/arm-linux-gnueabihf/asm/types.h:
/usr/include/asm-generic/int-ll64.h:
/usr/include/arm-linux-gnueabihf/asm/byteorder.h:
/usr/include/linux/byteorder/little_endian.h:
/usr/include/linux/swab.h:
/usr/include/arm-linux-gnueabihf/asm/swab.h:
../sysdeps/nptl/tcb-access.h:
../sysdeps/nptl/libc-lock.h:
../sysdeps/nptl/libc-lockP.h:
../sysdeps/generic/link_map.h:
../sysdeps/generic/dl-relocate-ld.h:
../include/fpu_control.h:
../sysdeps/arm/fpu_control.h:
../include/sys/mman.h:
../misc/sys/mman.h:
../sysdeps/unix/sysv/linux/bits/mman.h:
../sysdeps/unix/sysv/linux/bits/mman-map-flags-generic.h:
../sysdeps/unix/sysv/linux/bits/mman-linux.h:
../sysdeps/unix/sysv/linux/bits/mman-shared.h:
../sysdeps/generic/dl-fixup-attribute.h:
../sysdeps/generic/dl-procruntime.c:
../sysdeps/unix/sysv/linux/arm/dl-procinfo.c:
../sysdeps/unix/sysv/linux/dl-vdso-setup.c:
../include/libintl.h:
../intl/libintl.h:
../include/stdio.h:
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
../include/bits/types/FILE.h:
../libio/bits/types/FILE.h:
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
../include/wchar.h:
../wcsmbs/wchar.h:
../include/bits/types/mbstate_t.h:
../wcsmbs/bits/types/mbstate_t.h:
../libio/iolibio.h:
../sysdeps/unix/sysv/linux/fatal-prepare.h:
