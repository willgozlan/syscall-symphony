# WARNING: Incorrect Branch. Please switch to branch `milestone-code-example` for our milestone code

# syscall-symphony

## Setup Instructions:
1.) Clone this repo. 

2.) Ensure you have gawk and bison installed as these are dependencies (`sudo apt install gawk bison`)

3.) The `glibc-symphony` directory contains the modifed glibc files. In it, there are 3 subdirectories as follows:
  - `glibc`: this is where the git repo goes (you can move it from your home directory)
  - `glibc-build`: this is where glibc gets built
  - `local`: this is where the headers and library files get installed after the build

Navigate into the `glibc-symphony/glibc-build` directory and run the following, where `PATH` is the absolute path to `glibc-symphony/local`:
  `../glibc/configure --prefix=PATH`
 
 4.) From the same directory (`glibc-symphony/glibc-build`), compile with  `make -j4`. Note, you could also make clean. 
 
 5.) Install everything into the `/glibc-symphony/local` by running: `make -j4 install`. 
 
 6.) You are done compiling and setting up our version of glibc!
 
 7.) To use it, compile and link with this version. See sample in Makefile, under `examples`.



