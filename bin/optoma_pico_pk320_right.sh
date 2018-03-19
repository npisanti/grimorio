#!/bin/sh
#set here the output from xrandr saved config
#xrandr --output HDMI2 --mode 1366x768 --pos 0x0 --rotate normal --output HDMI1 --mode 720x576 --pos 1366x0 --rotate normal --output DP1 --off
#WP=$(echo |sed -n "2p" ~/.config/nitrogen/bg-saved.cfg   )
#sed -i '7 c\'$WP'' ~/.config/nitrogen/bg-saved.cfg 
nitrogen --restore
exit 0
