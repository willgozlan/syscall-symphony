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
    exec strace  -EGCONV_PATH=/syscall-symphony/glibc-symphony/glibc-build/iconvdata  -ELOCPATH=/syscall-symphony/glibc-symphony/glibc-build/localedata  -ELC_ALL=C  /syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /syscall-symphony/glibc-symphony/glibc-build:/syscall-symphony/glibc-symphony/glibc-build/math:/syscall-symphony/glibc-symphony/glibc-build/elf:/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/syscall-symphony/glibc-symphony/glibc-build/nss:/syscall-symphony/glibc-symphony/glibc-build/nis:/syscall-symphony/glibc-symphony/glibc-build/rt:/syscall-symphony/glibc-symphony/glibc-build/resolv:/syscall-symphony/glibc-symphony/glibc-build/mathvec:/syscall-symphony/glibc-symphony/glibc-build/support:/syscall-symphony/glibc-symphony/glibc-build/crypt:/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  rpctrace)
    exec rpctrace  -EGCONV_PATH=/syscall-symphony/glibc-symphony/glibc-build/iconvdata  -ELOCPATH=/syscall-symphony/glibc-symphony/glibc-build/localedata  -ELC_ALL=C  /syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /syscall-symphony/glibc-symphony/glibc-build:/syscall-symphony/glibc-symphony/glibc-build/math:/syscall-symphony/glibc-symphony/glibc-build/elf:/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/syscall-symphony/glibc-symphony/glibc-build/nss:/syscall-symphony/glibc-symphony/glibc-build/nis:/syscall-symphony/glibc-symphony/glibc-build/rt:/syscall-symphony/glibc-symphony/glibc-build/resolv:/syscall-symphony/glibc-symphony/glibc-build/mathvec:/syscall-symphony/glibc-symphony/glibc-build/support:/syscall-symphony/glibc-symphony/glibc-build/crypt:/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  valgrind)
    exec env GCONV_PATH=/syscall-symphony/glibc-symphony/glibc-build/iconvdata LOCPATH=/syscall-symphony/glibc-symphony/glibc-build/localedata LC_ALL=C valgrind  /syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /syscall-symphony/glibc-symphony/glibc-build:/syscall-symphony/glibc-symphony/glibc-build/math:/syscall-symphony/glibc-symphony/glibc-build/elf:/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/syscall-symphony/glibc-symphony/glibc-build/nss:/syscall-symphony/glibc-symphony/glibc-build/nis:/syscall-symphony/glibc-symphony/glibc-build/rt:/syscall-symphony/glibc-symphony/glibc-build/resolv:/syscall-symphony/glibc-symphony/glibc-build/mathvec:/syscall-symphony/glibc-symphony/glibc-build/support:/syscall-symphony/glibc-symphony/glibc-build/crypt:/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  container)
    exec env GCONV_PATH=/syscall-symphony/glibc-symphony/glibc-build/iconvdata LOCPATH=/syscall-symphony/glibc-symphony/glibc-build/localedata LC_ALL=C  /syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /syscall-symphony/glibc-symphony/glibc-build:/syscall-symphony/glibc-symphony/glibc-build/math:/syscall-symphony/glibc-symphony/glibc-build/elf:/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/syscall-symphony/glibc-symphony/glibc-build/nss:/syscall-symphony/glibc-symphony/glibc-build/nis:/syscall-symphony/glibc-symphony/glibc-build/rt:/syscall-symphony/glibc-symphony/glibc-build/resolv:/syscall-symphony/glibc-symphony/glibc-build/mathvec:/syscall-symphony/glibc-symphony/glibc-build/support:/syscall-symphony/glibc-symphony/glibc-build/crypt:/syscall-symphony/glibc-symphony/glibc-build/nptl /syscall-symphony/glibc-symphony/glibc-build/support/test-container env GCONV_PATH=/syscall-symphony/glibc-symphony/glibc-build/iconvdata LOCPATH=/syscall-symphony/glibc-symphony/glibc-build/localedata LC_ALL=C  /syscall-symphony/glibc-symphony/glibc-build/elf/ld-linux-armhf.so.3 --library-path /syscall-symphony/glibc-symphony/glibc-build:/syscall-symphony/glibc-symphony/glibc-build/math:/syscall-symphony/glibc-symphony/glibc-build/elf:/syscall-symphony/glibc-symphony/glibc-build/dlfcn:/syscall-symphony/glibc-symphony/glibc-build/nss:/syscall-symphony/glibc-symphony/glibc-build/nis:/syscall-symphony/glibc-symphony/glibc-build/rt:/syscall-symphony/glibc-symphony/glibc-build/resolv:/syscall-symphony/glibc-symphony/glibc-build/mathvec:/syscall-symphony/glibc-symphony/glibc-build/support:/syscall-symphony/glibc-symphony/glibc-build/crypt:/syscall-symphony/glibc-symphony/glibc-build/nptl ${1+"$@"}
    ;;
  *)
    usage
    ;;
esac
