#!/bin/bash
amixer set Master 1-
volume=`amixer get Master | grep 'Mono:' | awk -F'[][]' '{ print $2 }'`
volume="Volume = $volume"
notify-send "$volume"
exit
