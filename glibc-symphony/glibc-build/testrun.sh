#!/bin/bash
builddir=`dirname "$0"`
GCONV_PATH="${builddir}/iconvdata"

usage () {
cat << EOF
Usage: $0 [OPTIONS] <program> [ARGUMENTS...]

  --tool=TOOL  Run with the specified TOOL. It can be strace, rpctrace,
               valgrind or container. The container will run within
               support/test-container.
EOF

  exit 1
}

toolname=default
while test $# -gt 0 ; do
  case "$1" in
    --tool=*)
      toolname="${1:7}"
      shift
      ;;
    --*)
      usage
      ;;
    *)
      break
      ;;
  esac
done

if test $# -eq 0 ; then
  usage
fi

case "$toolname" in
  default)
    exec   env GCONV_PATH="${builddir}"/iconvdata LOCPATH="${builddir}"/localedata LC_ALL=C  "${builddir}"/elf/ld-linux-armhf.so.3 --library-path "${builddir}":"${builddir}"/math:"${builddir}"/elf:"${builddir}"/dlfcn:"${builddir}"/nss:"${builddir}"/nis:"${builddir}"/rt:"${builddir}"/resolv:"${builddir}"/mathvec:"${builddir}"/support:"${builddir}"/crypt:"${builddir}"/nptl ${1+"$@"}
    ;;
  strace)
    exec strace  -EGCONV_PATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/iconvdata  -ELOCPATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/localedata  -ELC_ALL=C  /home/pi/syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /home/pi/syscall-symphony/glibc-symphony/glibc-build:/home/pi/syscall-symphony/glibc-symphony/glibc-build/math:/home/pi/syscall-symphony/glibc-symphony/glibc-build/elf:/home/pi/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nss:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nis:/home/pi/syscall-symphony/glibc-symphony/glibc-build/rt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/resolv:/home/pi/syscall-symphony/glibc-symphony/glibc-build/mathvec:/home/pi/syscall-symphony/glibc-symphony/glibc-build/support:/home/pi/syscall-symphony/glibc-symphony/glibc-build/crypt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  rpctrace)
    exec rpctrace  -EGCONV_PATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/iconvdata  -ELOCPATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/localedata  -ELC_ALL=C  /home/pi/syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /home/pi/syscall-symphony/glibc-symphony/glibc-build:/home/pi/syscall-symphony/glibc-symphony/glibc-build/math:/home/pi/syscall-symphony/glibc-symphony/glibc-build/elf:/home/pi/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nss:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nis:/home/pi/syscall-symphony/glibc-symphony/glibc-build/rt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/resolv:/home/pi/syscall-symphony/glibc-symphony/glibc-build/mathvec:/home/pi/syscall-symphony/glibc-symphony/glibc-build/support:/home/pi/syscall-symphony/glibc-symphony/glibc-build/crypt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  valgrind)
    exec env GCONV_PATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/iconvdata LOCPATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/localedata LC_ALL=C valgrind  /home/pi/syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /home/pi/syscall-symphony/glibc-symphony/glibc-build:/home/pi/syscall-symphony/glibc-symphony/glibc-build/math:/home/pi/syscall-symphony/glibc-symphony/glibc-build/elf:/home/pi/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nss:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nis:/home/pi/syscall-symphony/glibc-symphony/glibc-build/rt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/resolv:/home/pi/syscall-symphony/glibc-symphony/glibc-build/mathvec:/home/pi/syscall-symphony/glibc-symphony/glibc-build/support:/home/pi/syscall-symphony/glibc-symphony/glibc-build/crypt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  container)
    exec env GCONV_PATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/iconvdata LOCPATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/localedata LC_ALL=C  /home/pi/syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /home/pi/syscall-symphony/glibc-symphony/glibc-build:/home/pi/syscall-symphony/glibc-symphony/glibc-build/math:/home/pi/syscall-symphony/glibc-symphony/glibc-build/elf:/home/pi/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nss:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nis:/home/pi/syscall-symphony/glibc-symphony/glibc-build/rt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/resolv:/home/pi/syscall-symphony/glibc-symphony/glibc-build/mathvec:/home/pi/syscall-symphony/glibc-symphony/glibc-build/support:/home/pi/syscall-symphony/glibc-symphony/glibc-build/crypt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nptl /home/pi/syscall-symphony/glibc-symphony/glibc-build/support/test-container env GCONV_PATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/iconvdata LOCPATH=/home/pi/syscall-symphony/glibc-symphony/glibc-build/localedata LC_ALL=C  /home/pi/syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /home/pi/syscall-symphony/glibc-symphony/glibc-build:/home/pi/syscall-symphony/glibc-symphony/glibc-build/math:/home/pi/syscall-symphony/glibc-symphony/glibc-build/elf:/home/pi/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nss:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nis:/home/pi/syscall-symphony/glibc-symphony/glibc-build/rt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/resolv:/home/pi/syscall-symphony/glibc-symphony/glibc-build/mathvec:/home/pi/syscall-symphony/glibc-symphony/glibc-build/support:/home/pi/syscall-symphony/glibc-symphony/glibc-build/crypt:/home/pi/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  *)
    usage
    ;;
esac
