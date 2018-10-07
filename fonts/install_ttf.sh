#!/bin/bash

sudo cp $1/*.ttf /usr/share/fonts/truetype

cd /usr/share/fonts/truetype
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
sudo xset fp rehash

exit
