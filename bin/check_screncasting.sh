#!/bin/bash

VIDEO=$( pgrep ffmpeg )
AUDIO=$( pgrep jack_capture )

if [ "$VIDEO" != "" ] && [ "$AUDIO" != "" ]; then
    echo "Audio/Video"
elif [ "$VIDEO" != "" ] ; then
    echo "Video"
elif [ "$AUDIO" != "" ] ; then
    echo "Audio"
else
    echo "Nothing"
fi

exit
