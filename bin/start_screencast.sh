#!/bin/bash

#ffmpeg -y -f x11grab -s 600x720 -i :0.0+660,140 -vcodec libx264 -threads 2 $HOME/Videos/screencast_temp.mkv &
ffmpeg -y -f x11grab -s 1920x1080 -i :0.0 -vcodec libx264 -threads 2 $HOME/Videos/screencast_temp.mkv &
jack_capture -d 6000 $HOME/Videos/screencast_temp.wav &

exit
