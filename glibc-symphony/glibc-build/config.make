# config.make.  Generated from config.make.in by configure.
# Don't edit this file.  Put configuration parameters in configparms instead.

version = 2.35.9000
release = development

# Installation prefixes.
install_root = $(DESTDIR)
prefix = /syscall-symphony/glibc-symphony/local
exec_prefix = ${prefix}
datadir = ${datarootdir}
libdir = ${exec_prefix}/lib
bindir = ${exec_prefix}/bin
slibdir = 
rtlddir = 
complocaledir = 
sysconfdir = ${prefix}/etc
libexecdir = ${exec_prefix}/libexec
rootsbindir = 
infodir = ${datarootdir}/info
includedir = ${prefix}/include
datarootdir = ${prefix}/share
localstatedir = ${prefix}/var
localedir = ${datarootdir}/locale
multidir= .

# Should we use and build ldconfig?
use-ldconfig = yes

# Maybe the `ldd' script must be rewritten.
ldd-rewrite-script = no

# System configuration.
config-machine = armv7l
base-machine = arm
config-vendor = unknown
config-os = linux-gnueabihf
config-sysdirs =  sysdeps/unix/sysv/linux/arm/le sysdeps/unix/sysv/linux/arm sysdeps/arm/nptl sysdeps/unix/sysv/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu sysdeps/unix/inet sysdeps/unix/sysv sysdeps/unix/arm sysdeps/unix sysdeps/posix sysdeps/arm/le/armv6 sysdeps/arm/armv6 sysdeps/arm/le sysdeps/arm sysdeps/wordsize-32 sysdeps/ieee754/flt-32 sysdeps/ieee754/dbl-64 sysdeps/ieee754 sysdeps/generic
cflags-cpu = 
asflags-cpu = 

config-extra-cflags = 
config-extra-cppflags = 
config-cflags-nofma = -ffp-contract=off

defines = 
sysheaders = 
sysincludes = 
c++-sysincludes = 
c++-cstdlib-header = /usr/include/c++/10/cstdlib
c++-cmath-header = /usr/include/c++/10/cmath
c++-bits-std_abs-h = /usr/include/c++/10/bits/std_abs.h
all-warnings = 
enable-werror = yes

have-z-combreloc = yes
have-z-execstack = yes
have-protected-data = yes
have-insert = yes
have-glob-dat-reloc = yes
with-fp = yes
enable-timezone-tools = yes
unwind-find-fde = no
have-fpie = yes
have-ssp = yes
stack-protector = -fno-stack-protector
no-stack-protector = -fno-stack-protector -DSTACK_PROTECTOR_LEVEL=0
have-selinux = no
have-libaudit = 
have-libcap = 
have-cc-with-libunwind = no
fno-unit-at-a-time = -fno-toplevel-reorder -fno-section-anchors
bind-now = no
have-hash-style = yes
use-default-link = yes
have-cxx-thread_local = yes
have-loop-to-function = yes
have-textrel_ifunc = yes

multi-arch = no

mach-interface-list = 

experimental-malloc = yes

memory-tagging = no

nss-crypt = no
static-nss-crypt = no

# Configuration options.
build-shared = yes
build-profile = no
build-static-nss = no
cross-compiling = no
force-install = yes
build-crypt = yes
build-nscd = yes
use-nscd = yes
build-hardcoded-path-in-tests= no
build-pt-chown = no
have-tunables = yes
pthread-in-libc = yes

# Build tools.
CC = gcc
CXX = g++
BUILD_CC = 
CFLAGS = -g -O2
CPPFLAGS-config = 
CPPUNDEFS = 
extra-nonshared-cflags = 
rtld-early-cflags = 
ASFLAGS-config =  -Wa,--noexecstack
AR = ar
NM = nm
MAKEINFO = :
AS = $(CC) -c
BISON = bison
AUTOCONF = no
OBJDUMP = objdump
OBJCOPY = objcopy
GPROF = gprof
READELF = readelf

# Installation tools.
INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_INFO = /usr/bin/install-info
LN_S = ln -s
MSGFMT = :

# Script execution tools.
BASH = /usr/bin/bash
AWK = gawk
PERL = /usr/bin/perl
PYTHON = python3 -B

# Additional libraries.
LIBGD = no

# Package versions and bug reporting configuration.
PKGVERSION = (GNU libc) 
PKGVERSION_TEXI = (GNU libc) 
REPORT_BUGS_TO = <https://www.gnu.org/software/libc/bugs.html>
REPORT_BUGS_TEXI = @uref{https://www.gnu.org/software/libc/bugs.html}

# More variables may be inserted below by configure.

have-gnu-retain = no
with-lld = no
have-z-start-stop-gc = no
have-depaudit = yes
have-no-dynamic-linker = yes
have-static-pie = yes
have-mtls-dialect-gnu2 = no
default-abi = hard
build-mathvec = no
have-ifunc = yes
have-gcc-ifunc = yes
build-pic-default = no
cc-pie-default = no
build-pie-default = yes
enable-static-pie = no
