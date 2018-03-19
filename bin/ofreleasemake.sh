#!/bin/bash
make -j4 -s 2>&1
if [ $? -eq 0 ]; then
    make RunRelease
else
	echo "Compilation Failed!"
fi
exit
