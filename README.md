# Milestone Interim Code for Syscall Symphony 
Authors William Gozlan, Meagan Konst, Diva Harsoor

## About
This is the code we have so far, for the milestone report. See Milestone report for more details. 


## Setup, Build, and Run Instructions:
1.) Clone this repo in your home directory. For the milestone specifically, be sure to be on the branch `milestone-code-example`. 

2.) Verify dependencies:  
  - Ensure you have gawk and bison installed as these are dependencies (`sudo apt install gawk bison`)
  - Ensure you have the `aplay` utility to play wav files from command line. Check in `/usr/bin/aplay`. If you don't have it, you can install it with `sudo apt-get install alsa-utils`
  - Right now, assumptions are made that the repo is cloned into the home directory and that the user is the `pi` user. However, as mentioned in the report, we will fix that before the project is finalized. For now, please be the pi user, and if not, there are specific modification instructions in Steps 4 and 6. 

3.) The project directory `syscall-symphony/`contains 3 sub-directories as follows:
  - `examples/`: This contains an example program to test our modifications to glibc, as well as a Makefile to build and link against our version of glibc. 
  - `glibc-symphony/`: This is the main directory for our modifed glibc version to make changes to the glibc source code as well as build and run it. There are 3 directories, as follows:
    - `glibc/`:	glibc source code, where we make our modifications 
    - `glibc-build/`:	Initially empty directory where glibc will be built
    - `local/`: Initially empty directory where the headers/library files get installed after build
  - `sounds/`: The wav files for the specific syscalls reside here. 

Navigate into the `syscall-symphony/glibc-symphony/glibc-build` directory and run the following, where `PATH` is the _absolute_ path to `syscall-symphony/glibc-symphony/local`:     `../glibc/configure --prefix=PATH` 
 
 4.) From the same directory (`syscall-symphony/glibc-symphony/glibc-build`), compile with  `make -j4`. Note, you could also make clean, if you wanted to clean up leftover artifacts. 

Note: If you have cloned the repo into another location besides `/home/pi/`, you should modify line 40 of the file `syscall-symphony/glibc-symphony/glibc/sysdeps/unix/sysv/linux/open.c` by replacing the path /home/pi/syscall-symphony/sounds/open.wav, with your absolute path from root to where this file lives. This should be done before compiling. 
 
 5.) Install everything into the `syscall-symphony/glibc-symphony/local` by running: `make -j4 install`. Note that as of now, sounds are played (and messages are printed) at the very end of the process (see report for details). 
 
You are done compiling and setting up our version of glibc! 
 
 6.) Finally, to test this modifed version of `glibc`, navigate into the `syscall-symphony/examples` directory. Run `make` to build the sample program with the provided Makefile, which links against `glibc-symphony`. Finally, execute `./hello` which should create the file named foo, and play the open sound. See report for more details on this. 

Note: If you have cloned the repo into another location besides `/home/pi/`, you should modify the first line of the Makefile in exmaples so that the variable `testglibc` points to `syscall-symphony/glibc-symphony/local`, using an absolute path. 



## Troubleshooting
Problem: Audio doesn't come through
Solution: 
  - Ensure an audio device is plugged into the RaspberryPi, and it is on. 
  - Ensure the audio out is set to the correct location by running `sudo raspi-config`, then going to System Options -> Audio -> Headphones -> OK -> Finish. Alternatively you could set this to HDMI if you are using an HDMI device with speakers. 



