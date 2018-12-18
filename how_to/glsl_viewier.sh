#!/bin/bash

echo "installing glslViewer"
sudo apt-get install libglfw3-dev git-core libglu1-mesa-dev libxinerama-dev libxcursor-dev libxi-dev python-setuptools
cd ~/apps
git clone http://github.com/patriciogonzalezvivo/glslViewer
cd glslViewer
make
sudo make install
rm ~/bin/glsl 
ln -s ~/apps/glslViewer/bin/glslViewer ~/bin/glsl

exit
