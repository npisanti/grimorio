#!/bin/bash

DEVICE="PCH"

if [ ! -z "$1" ]; then
    DEVICE="$1"
fi

sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
sudo cpufreq-set -c 2 -g performance
sudo cpufreq-set -c 3 -g performance

#pkill -USR1 redshift

# to get cards use: cat /proc/asound/cards
#jackd -P89 -p16 -t2000 -dalsa -dhw:PCH -p256 -n3 -r44100 -s &
jackd -R -P89 -p128 -t2000 -dalsa -dhw:$DEVICE -r44100 -p512 -n2 -s -P &

sleep 3


substrata -p ~/resources/substrata -o 4242


exit
