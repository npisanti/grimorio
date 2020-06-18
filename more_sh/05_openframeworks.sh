#!/bin/bash

cd ~

git clone --recursive https://github.com/openframeworks/openFrameworks.git

rm ~/oF
ln -s ~/openFrameworks/ ~/oF

cd ~/oF/scripts/linux/
./download_libs.sh 

cd ~/oF/scripts/linux/debian/
sudo ./install_dependencies.sh
sudo ./install_codecs.sh

sudo apt-get install qjackctl 

cd ~/oF
git submodule init
git submodule update
cd ~/oF/apps/projectGenerator/commandLine/
ofreleasemake.sh
sleep 2
cd bin
./projectGenerator -r -o"../../../../" ../../../../examples

cd ~/oF/examples/graphics/graphicsExample
ofreleasemake.sh

cd ~/oF/examples/sound/soundBufferExample
ofreleasemake.sh

exit
