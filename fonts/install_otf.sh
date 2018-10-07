#!/bin/bash

sudo cp $1/*.otf /usr/share/fonts/opentype

cd /usr/share/fonts/opentype
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
sudo xset fp rehash

exit
