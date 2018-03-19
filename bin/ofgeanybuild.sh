#!/bin/bash
pathnow=$(pwd)
base=$(basename "$pathnow")
level="0";

while [ "$base" != "src"  ] && [ "$level" -lt "5" ]
do 
    cd ..
    pathnow=$(pwd)
    base=$(basename "$pathnow")
    let "level += 1"
done
cd ..
#echo $(pwd)
#echo "found!!! $level folders above."
make -j4 -s 2>&1
exit
