#!/bin/bash

AUDIO=$( pgrep jack_capture )

if [ "$AUDIO" != "" ] ; then
    killall ffmpeg 
    killall jack_capture
    sleep 2
    DATE=`date +%Y%m%d`
    TIME=`date +%Hh%M`
    ffmpeg -i ~/Videos/screencast_temp.mkv -i ~/Videos/screencast_temp.wav -c:v copy -c:a libvorbis -shortest ~/Videos/screencast_$DATE-$TIME.mkv
else
    killall ffmpeg 
    sleep 2
    DATE=`date +%Y%m%d`
    TIME=`date +%Hh%M`    
    mv ~/Videos/screencast_temp.mkv ~/Videos/screencast_$DATE-$TIME.mkv
fi

exit
