#!/bin/sh
#xrandr --output LVDS1 --mode 1600x900 --pos 320x0 --rotate normal --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal 
xrandr --output LVDS1 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal 
nitrogen --restore
killall conky
conky
exit
