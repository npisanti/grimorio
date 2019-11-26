#!/bin/bash

sudo cpufreq-set -c 0 -g powersave
sudo cpufreq-set -c 1 -g powersave
sudo cpufreq-set -c 2 -g powersave
sudo cpufreq-set -c 3 -g powersave

exit
