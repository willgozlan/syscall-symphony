testglibc = /syscall-symphony/glibc-symphony/local

gcc = gcc 

.PHONY: all

all: hello

hello: hello.o
	$(gcc) -Wl,--dynamic-linker=$(testglibc)/lib/ld-linux-armhf.so.3 \
	-B$(testglibc)/lib/ \
	-Wl,-rpath=$(testglibc)/lib \
	$< -o $@

hello.o: hello.c
	$(gcc) -c -g -O0 -I$(testglibc)/include $< -o $@

clean:
	rm -f hello hello.o
