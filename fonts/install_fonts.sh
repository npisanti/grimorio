#!/bin/bash

sudo apt-get install xfonts-terminus xfonts-terminus-dos xfonts-terminus-oblique fonts-inconsolata fonts-f500 fonts-roboto-fontface fonts-firacode

sudo cp *.ttf /usr/share/fonts/truetype
sudo cp *.otf /usr/share/fonts/opentype

cd /usr/share/fonts/truetype
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
sudo xset fp rehash

sudo cd /usr/share/fonts/opentype
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
sudo xset fp rehash

exit
