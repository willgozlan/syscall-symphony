testglibc = /syscall-symphony/glibc-symphony/local

gcc = gcc 

.PHONY: all

all: open close read write malloc free fork sleep


open: open.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

open.o: open.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@

close: close.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

close.o: close.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@

read: read.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

read.o: read.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@

write: write.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

write.o: write.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@


malloc: malloc.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

malloc.o: malloc.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@


free: free.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

free.o: free.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@

fork: fork.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

fork.o: fork.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@


sleep: sleep.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

sleep.o: sleep.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@


clean:
	rm -f open open.o close close.o read read.o write write.o malloc malloc.o free free.o fork fork.o sleep sleep.o
