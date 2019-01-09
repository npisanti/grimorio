#!/bin/bash

VIDEO=$( pgrep ffmpeg )
AUDIO=$( pgrep jack_capture )

if [ "$VIDEO" != "" ] && [ "$AUDIO" != "" ]; then
    killall ffmpeg 
    killall jack_capture
    sleep 2
    DATE=`date +%Y%m%d`
    TIME=`date +%Hh%M`
    ffmpeg -i ~/Videos/screencast_temp.mkv -i ~/Videos/screencast_temp.wav -c:v copy -c:a libvorbis -shortest ~/Videos/screencast_$DATE-$TIME.mkv
elif [ "$VIDEO" != "" ] ; then
    killall ffmpeg 
    sleep 2
    DATE=`date +%Y%m%d`
    TIME=`date +%Hh%M`    
    mv ~/Videos/screencast_temp.mkv ~/Videos/screencast_$DATE-$TIME.mkv
elif [ "$AUDIO" != "" ] ; then
    killall jack_capture 
    sleep 2
    DATE=`date +%Y%m%d`
    TIME=`date +%Hh%M`    
    mv ~/Videos/screencast_temp.wav ~/Videos/jack_recording_$DATE-$TIME.wav
fi

exit
