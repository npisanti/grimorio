#!/bin/bash
# add your commands here, using & to fork (othewise exit will kill them)

enable_autorun=1

if [ $enable_autorun -eq 1 ]; then
	echo "-------- executing autorun routine --------"

	cd /home/pi/ofGPIO/apps/synchron/osc_drums
	./bin/osc_drums

	ret=$?

	if [ $ret -ne 0 ]; then
        	sudo reboot
	else
        	echo app exited without errors
	fi
fi

exit
