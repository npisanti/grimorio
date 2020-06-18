#!/bin/bash
make Debug -j4 -s 2>&1  
# |  grcat ~/bin/conf.makecolor
# use basename and pwd commands to get the directory name, append it to bin/ and pass it to gdb if compiling return 0
exit
