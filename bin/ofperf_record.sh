#!/bin/bash

APPNAME=${1%/}

if [ -z "$APPNAME" ]; then

        APPNAME="${PWD##*/}_debug"
        echo "getting app name from current path"
        
fi

echo "getting pid for $APPNAME"

PID=$(pidof $APPNAME)

if [ -z "$PID" ]; then
    echo "wrong app name or process is not running"
    
else 
    echo "running perf record on pid $PID"

    sudo perf record -F 500 -p $PID -g -- sleep 30

    echo "moving perf.data to /tmp/perf"
    mkdir -p /tmp/perf
    sudo mv perf.data /tmp/perf/perf.data

    cd /tmp/perf 

    echo "generating perf-kernel.svg"
    sudo perf script > out.perf 
    perl /home/$USER/apps/FlameGraph/stackcollapse-perf.pl out.perf > out.folded
    perl /home/$USER/apps/FlameGraph/flamegraph.pl out.folded > perf-kernel.svg
fi

exit
