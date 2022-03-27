#!/bin/sh
# Test driver for tst-dso-ordering10, generated by dso-ordering-test.py
common_objpfx=$1
test_wrapper_env=$2
run_program_env=$3
something_failed=false
GLIBC_TUNABLES=glibc.rtld.dynamic_sort=1 ${test_wrapper_env} ${run_program_env} \
${common_objpfx}support/test-run-command \
${common_objpfx}elf/ld.so \
--library-path ${common_objpfx}elf/tst-dso-ordering10-dir:${common_objpfx}elf:${common_objpfx}.:${common_objpfx}dlfcn \
${common_objpfx}elf/tst-dso-ordering10-dir/tst-dso-ordering10 > \
  ${common_objpfx}elf/tst-dso-ordering10-dir/tst-dso-ordering10-glibc.rtld.dynamic_sort_1.output
if [ $? -ne 0 ]; then
  echo 'FAIL: tst-dso-ordering10(GLIBC_TUNABLES=glibc.rtld.dynamic_sort=1) execution test'
  something_failed=true
else
  diff -wu ${common_objpfx}elf/tst-dso-ordering10-dir/tst-dso-ordering10-glibc.rtld.dynamic_sort_1.output \
           ${common_objpfx}elf/dso-sort-tests-src/tst-dso-ordering10.exp
  if [ $? -ne 0 ]; then
    echo 'FAIL: tst-dso-ordering10(GLIBC_TUNABLES=glibc.rtld.dynamic_sort=1) expected output comparison'
    something_failed=true
  fi
fi
GLIBC_TUNABLES=glibc.rtld.dynamic_sort=2 ${test_wrapper_env} ${run_program_env} \
${common_objpfx}support/test-run-command \
${common_objpfx}elf/ld.so \
--library-path ${common_objpfx}elf/tst-dso-ordering10-dir:${common_objpfx}elf:${common_objpfx}.:${common_objpfx}dlfcn \
${common_objpfx}elf/tst-dso-ordering10-dir/tst-dso-ordering10 > \
  ${common_objpfx}elf/tst-dso-ordering10-dir/tst-dso-ordering10-glibc.rtld.dynamic_sort_2.output
if [ $? -ne 0 ]; then
  echo 'FAIL: tst-dso-ordering10(GLIBC_TUNABLES=glibc.rtld.dynamic_sort=2) execution test'
  something_failed=true
else
  diff -wu ${common_objpfx}elf/tst-dso-ordering10-dir/tst-dso-ordering10-glibc.rtld.dynamic_sort_2.output \
           ${common_objpfx}elf/dso-sort-tests-src/tst-dso-ordering10.exp
  if [ $? -ne 0 ]; then
    echo 'FAIL: tst-dso-ordering10(GLIBC_TUNABLES=glibc.rtld.dynamic_sort=2) expected output comparison'
    something_failed=true
  fi
fi
if $something_failed; then
  exit 1
else
  echo 'PASS: all tests for tst-dso-ordering10 succeeded'
  exit 0
fi
