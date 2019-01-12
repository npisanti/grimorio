#!/bin/bash
pactl -- set-sink-mute 0 toggle
mutestatus=`amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $4 }'`
if [ "$mutestatus" == "on" ]; then
    mutestatus="off"
else
    mutestatus="muted"
fi
mutestatus="Mute = $mutestatus"
notify-send "$mutestatus"
exit
