#!/bin/bash

DATE=`date +%Y%m%d`
TIME=`date +%Hh%M`

# Start recording audio 
jack_capture -b 24 $HOME/Screencasts/screencast_audio_$DATE-$TIME.wav 
