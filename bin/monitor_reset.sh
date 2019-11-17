#!/bin/sh
xrandr --output LVDS1 --mode 1600x900 --pos 0x0 --rotate normal --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --off --output VGA1 --off
xcalib -d :0 /home/$USER/grimorio/desktop/machine_specific/thinkpad_t430/N140FGE_EA2.icm
nitrogen --restore
killall conky
conky
exit
