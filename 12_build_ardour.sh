#!/bin/bash

mkdir -p ~/apps

cd ~/apps
git clone git://github.com/Ardour/ardour.git

sudo apt-get install -y libglibmm-2.4-dev libcurl4-gnutls-dev liblo-dev libtag1-dev vamp-plugin-sdk librubberband-dev libaubio-dev liblrdf0-dev libsamplerate0-dev lv2-dev libserd-dev libsord-dev libsratom-dev liblilv-dev libgtkmm-2.4-dev libarchive-dev libfftw3-dev liblrdf0-dev

cd ~/apps/ardour

./waf configure

./waf

exit
