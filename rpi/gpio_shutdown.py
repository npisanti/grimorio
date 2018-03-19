#!/usr/bin/env python2.7
# script by Alex Eames http://RasPi.tv/
# http://raspi.tv/2013/how-to-use-interrupts-with-python-on-the-raspberry-pi-and-rpi-gpio

import subprocess
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)

# GPIO 21 (pin 40) set up as input. It is pulled up to stop false signals
GPIO.setup(3, GPIO.IN, pull_up_down=GPIO.PUD_UP)

print ">>> put a jumper on the 39-40 pins to shutdown <<<"
# now the program will do nothing until the signal on port 5
# starts to fall towards zero. This is why we used the pullup
# to keep the signal high and prevent a false interrupt

#print "During this waiting time, your computer is not"
#print "wasting resources by polling for a button press.\n"
#print "Press your button when ready to initiate a falling edge interrupt."

try:
    GPIO.wait_for_edge(21, GPIO.FALLING)
    print "\nFalling edge detected."
    subprocess.call(['shutdown -h now "System halted by GPIO action"'], shell=True)
except KeyboardInterrupt:
    GPIO.cleanup()       # clean up GPIO on CTRL+C exit
GPIO.cleanup()           # clean up GPIO on normal exit
