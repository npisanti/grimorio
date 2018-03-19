#!/bin/bash

DATE=`date +%Y%m%d`
TIME=`date +%Hh%M`

# Start screencast
#xterm -e jack_capture -b 24 $HOME/Videos/screencast_audio_$DATE-$TIME.wav &
#ffmpeg -an -f x11grab -r 30 -s 1366x768 -i :0.0+0,0 -vcodec libx264 -preset ultrafast -threads 0 $HOME/Videos/screencast_video_$DATE-$TIME.mkv


ffmpeg -f alsa -ac 2 -i ffmpeg -f x11grab -r 30 -s 1366x768 -i :0.0+0,0 -acodec pcm_s16le -vcodec libx264 -preset ultrafast -threads 0 $HOME/Videos/screencast_video_$DATE-$TIME.mkv

#killall jack_capture

#ffmpeg -f jack -ac 2 -i ffmpeg -f x11grab -r 30 -s 1366x768 -i :0.0+0,0 -acodec pcm_s16le -vcodec libx264 -preset ultrafast  -threads 0 $HOME/Videos/screencast-$DATE-$TIME.mkv
