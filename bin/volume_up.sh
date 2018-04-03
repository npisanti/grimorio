#!/bin/bash
pactl -- set-sink-volume 0 +1db 
volume=`pactl list | sed -n 197p | awk '{print $7}'`
volume="Volume = $volume dB"
notify-send "$volume"
exit
