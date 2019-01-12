#!/bin/bash
pactl -- set-sink-volume 0 -1db 
volume=`amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }'`
volume="Volume = $volume"
notify-send "$volume"
exit
