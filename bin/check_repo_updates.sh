#!/bin/bash
declare -a paths

paths=(
    "oF"
    "apps/Orca-c"
    "apps/Orca"
    "apps/create_ap"
    "apps/FlameGraph"
    "oF/addons/ofxAddonTemplate"
    "oF/addons/ofxBiquadFilter"
    "oF/addons/ofxBlur"
    "oF/addons/ofxBox2d"
    "oF/addons/ofxCv"
    "oF/addons/ofxCvPiCam"
    "oF/addons/ofxDmx"
    "oF/addons/ofxEasing"
    "oF/addons/ofxGLWarper"
    "oF/addons/ofxGPIO"
    "oF/addons/ofxImageSequence"
    "oF/addons/ofxLaser"
    "oF/addons/ofxLua"
    "oF/addons/ofxMidi"
    "oF/addons/ofxNanoVG"
    "oF/addons/ofxRapidLib"
    "oF/addons/ofxWatchFile"
)


for i in "${paths[@]}"
do
    cd "$HOME/$i"
    git fetch -q
    status=`git status | sed -n 2p`
    if [ "$status" != "Your branch is up-to-date with 'origin/master'." ]; then
        echo "[ $i ] $status"
    fi
done

exit
