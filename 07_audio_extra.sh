#!/bin/bash

echo "installing jack utils"
sudo apt-get install qjackctl aconnectgui jack-midi-clock jack-capture 

echo "installing pure data things"
sudo apt-get install puredata gem pd-arraysize pd-aubio pd-beatpipe pd-bsaylor pd-comport cyclist pd-cyclone pd-ggee pd-hid pd-iemlib pd-iemmatrix pd-iemnet pd-jmmmp pd-libdir pd-lua pd-motex pd-pddp pd-pdstring pd-purepd pd-readanysf pd-unauthorized pd-vbap pd-wiimote pd-zexy puredata-import

echo "installing extra audio plugins"
sudo apt-get install multimedia-audio-plugins multimedia-timestretching ladish hydrogen libfftw3-bin libfftw3-dev zita-rev1 zynaddsubfx-dssi vkeybd zam-plugins jamin jkmeter

echo "building vcv rack"
cd ~/apps

git clone https://github.com/VCVRack/Rack.git
cd Rack
git checkout v0.4.0
git submodule update --init --recursive
make -j dep
make -j4

cd plugins 
git clone https://github.com/VCVRack/Fundamental.git
cd Fundamental
git checkout v0.4.0
git submodule update --init --recursive
make -j4

cd .. 
git clone https://github.com/VCVRack/AudibleInstruments.git
cd AudibleInstruments
git checkout v0.4.0
git submodule update --init --recursive
make -j4

cd .. 
git clone https://github.com/VCVRack/ESeries.git
cd ESeries
git checkout v0.4.0
git submodule update --init --recursive
make -j4

cd .. 
git clone https://github.com/VCVRack/Befaco.git
cd Befaco
git checkout v0.4.0
git submodule update --init --recursive
make -j4



exit
