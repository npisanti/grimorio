#!/bin/bash
amixer set Master toggle

mutestatus=`amixer sget Master | grep 'Mono:' | awk -F'[][]' '{ print $6 }'`
if [ "$mutestatus" == "on" ]; then
    mutestatus="off"
else
    mutestatus="muted"
fi
mutestatus="Mute = $mutestatus"
notify-send "$mutestatus"
exit
