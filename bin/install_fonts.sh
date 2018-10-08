#!/bin/bash

sudo cp *.ttf /usr/share/fonts/truetype
sudo cp *.otf /usr/share/fonts/opentype

cd /usr/share/fonts/truetype
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
sudo xset fp rehash

cd /usr/share/fonts/opentype
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
sudo xset fp rehash

exit
