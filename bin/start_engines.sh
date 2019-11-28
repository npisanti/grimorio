#!/bin/bash

sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
sudo cpufreq-set -c 2 -g performance
sudo cpufreq-set -c 3 -g performance

#pkill -USR1 redshift

# to get cards use: cat /proc/asound/cards
jackd -P89 -p16 -t2000 -dalsa -dhw:PCH -p512 -n3 -r44100 -s &

sleep 3


substrata -p ~/resources/substrata 


exit
