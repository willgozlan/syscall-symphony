# Final Project for Syscall Symphony 
Authors William Gozlan, Meagan Konst, Diva Harsoor

## About
This is the full version of the final version of our final project for CSE522S, syscall symphony. See the project report for more details. 

## Setup, Build, and Run Instructions:
1.) Clone the `main` branch of this repository in your root directory. The commands to do so are as follows. Note this will require `sudo` privileges.  

  ```
  cd /
  git clone https://github.com/willgozlan/syscall-symphony.git  
  ``` 

2.) Verify dependencies:  
  - Ensure you have gawk and bison installed as these are dependencies (`sudo apt install gawk bison`)
  - Ensure you have the `aplay` utility to play wav files from command line. Check in `/usr/bin/aplay`. If you don't have it, you can install it with `sudo apt-get install alsa-utils`
  - Right now, assumptions are made that the repo is cloned into the root directory, as this allows many users to link with glibc-symphony. See report for more details. 
 
3.) The project directory `syscall-symphony/`contains 3 sub-directories as follows:
  - `examples/`: This contains an example program to test our modifications to glibc, as well as a Makefile to build and link against our version of glibc. 
  - `finding_syscalls/`: This contains example programs that call a simple system call, then return. The included Makefile links against normal glibc. We used this along with `gdb` to find where specific system calls are implemented. See project report for more details. 
  - `glibc-symphony/`: This is the main directory for our modifed glibc version to make changes to the glibc source code as well as build and run it. There are 3 directories, as follows:
    - `glibc/`:	glibc source code, where we make our modifications 
    - `glibc-build/`:	Initially empty directory where glibc will be built
    - `local/`: Initially empty directory where the headers/library files get installed after build, and the linker path should point to link with `glibc-symphony`.
  - `pid-tools/`: This contains source files for the `add_pid` and `remove_pid` programs, along with a Makefile to build them. Additional files are dependencies to build these 2 programs. 
  - `sounds/`: The wav files for the specific syscalls reside here. 

Navigate into the `/syscall-symphony/glibc-symphony/glibc-build` directory and run the following, where `PATH` is the _absolute_ path to `syscall-symphony/glibc-symphony/local`. 

`../glibc/configure --prefix=PATH` 
 
 Since you should have cloned into root, the command should be as follows:
 `../glibc/configure --prefix=/syscall-symphony/glibc-symphony/local`
 
 
 4.) From the same directory (`/syscall-symphony/glibc-symphony/glibc-build`), compile with  `make -j4`. Note, you could also make clean, if you wanted to clean up leftover artifacts in future builds. Expect this to take around 40 minutes on the RaspberryPi. 
 
 5.) Still within the same directory (`/syscall-symphony/glibc-symphony/glibc-build`), install everything into the `/syscall-symphony/glibc-symphony/local` by running: `make -j4 install`. This should be quicker than the last step, but still take about 20 minutes on the RaspberryPi. 
 
 6.) Navigate to the `pid-tools` directory in `/syscall-symphony/pid-tools`. From there, run `make` to compile the PID user tools you need to add and remove files from the pid list. 

You are done compiling and setting up our version of glibc! 
 
 7.) Finally, to test this modifed version of `glibc`, navigate into the `/syscall-symphony/examples` directory. Run `make` to build the sample programs with the provided Makefile, which links against `glibc-symphony`. Finally, there are several programs you can run to see this works. 
 
  - The programs with a system call as a name (open, close, read, write, sleep, fork) and glibc functions (malloc, free) print the PID, then block on a call to `getc` for `stdin`. To use these, run the executable; then, from another terminal, navigate to `/syscall-symphony/pid-tools` and run `add_pid` with the PID as an argument to add it to the PID list. Then, in the other terminal that is waiting for standard input, press any key to continue and watch the system call play a sound then continue to run as normal! Upon the programs exit, you can run `remove_pid` with the PID as an argument to remove it from the PID list.
  - The programs big_example and parallel_dense_mm add and remove the PID's automaitically from the list by envoking a call to `system` to execute `add_pid` and `remove_pid`. You can run them as normal and the sounds should play. Note that parallel_dense_mm was adopted from CSE422S studios. 
 
Note: The first line of the Makefile in the `/syscall-symphony/examples` directory contains a variable on the first line called `testglibc`, which points to where `/syscall-symphony/glibc-symphony/local` is on your system, using an absolute path. 



## Troubleshooting
1.) Problem: Audio doesn't come through

  Solution: 
    - Ensure an audio device is plugged into the RaspberryPi, and it is on. 
    - Ensure the audio out is set to the correct location by running `sudo raspi-config`, then going to System Options -> Audio -> Headphones -> OK -> Finish. Alternatively you could set this to HDMI if you are using an HDMI device with speakers. 
    - You can verify ALSA's aplay is working by navigating to `syscall-symphony/sounds/` and playing the `open.wav` file by running `aplay open.wav`. 


2.) Problem: No such file or directory for either `/usr/bin/aplay` or `/syscall-symphony/sounds/open.wav`

  Solution: See step 2 above, and ensure the repository is cloned into `/` directory. 


3.) Problem: -bash: ./<executable>: No such file or directory in step 6, even though the executable is there 

  Solution: See the note in step 6. The `testglibc` variable is set to the wrong place (it must be an absolute path to `/syscall-symphony/glibc-symphony/local`).
  

