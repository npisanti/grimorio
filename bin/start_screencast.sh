#!/bin/bash

#SCREENCAST_WIDTH="1280"
#SCREENCAST_HEIGHT="720"
#SCREENCAST_X=320
#SCREENCAST_Y=135

SCREENCAST_WIDTH=480
SCREENCAST_HEIGHT=800
SCREENCAST_X=0
SCREENCAST_Y=0

if [ ! -z "$4" ]; then
    SCREENCAST_X="$1"
    SCREENCAST_Y="$2"
    SCREENCAST_WIDTH="$3"
    SCREENCAST_HEIGHT="$4"
fi

S_RESO="$SCREENCAST_WIDTHx$SCREENCAST_HEIGHT"
S_OFF="$SCREENCAST_X,$SCREENCAST_Y"

#ffmpeg -y -f x11grab -s 600x720 -i :0.0+660,140 -vcodec libx264 -threads 2 $HOME/Videos/screencast_temp.mkv &

ffmpeg -y -f x11grab -s 400x640 -i :0.0+0,0 -vcodec libx264 -threads 2 $HOME/Videos/screencast_temp.mkv &

jack_capture -d 6000 $HOME/Videos/screencast_temp.wav &

exit
