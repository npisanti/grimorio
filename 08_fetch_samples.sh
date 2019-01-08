#!/bin/bash

cd ~

echo " -------- getting samples --------"
wget -r -m --no-parent -erobots=off --reject="index.html*" http://npisanti.com/samples/

echo "-------- unzipping --------"
cd ~/npisanti.com/samples/
unzip '*.zip'

echo "-------- removing archives --------"
rm *.zip

echo "-------- moving data --------"
cd ~
mv ~/npisanti.com/samples/ np-samples
rmdir npisanti.com/

echo "-------- done  --------"

exit
