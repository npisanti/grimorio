#!/bin/bash
# add your commands here
echo "\n---executing autorun---"


# add this to enable reboot if app crashes (put it right after the app launch command) 
ret=$?
if [ $ret -ne 0 ]; then
        sudo reboot
else
        echo app exited without errors
fi


exit
