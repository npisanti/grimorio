#!/bin/bash

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
