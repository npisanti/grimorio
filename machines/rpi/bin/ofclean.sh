#!/bin/bash

if [ -d "bin" ]; then
    cd "bin/"
    rm *
    rm -rf libs
    cd ..
fi
if [ -d "obj" ]; then
    rm -rf obj
fi

exit
