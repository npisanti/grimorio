#!/bin/bash

sudo apt-get install libavformat-dev libavcodec-dev libavfilter-dev libavutil-dev libswscale-dev libswresample-dev frei0r-plugins-dev frei0r-plugins qt5-default qtmultimedia5-dev libqt5multimedia5 libqt5multimedia5-plugins libqt5svg5-dev

mkdir -p ~/apps
cd ~/apps

git clone https://github.com/olive-editor/olive.git
cd olive
qmake 

make -j4


exit
