#!/bin/bash
declare -a paths
declare -a forks

paths=(
    "oF"
    "apps/Orca-c"
    "apps/Orca"
    "apps/Dotgrid"
    "apps/create_ap"
    "apps/FlameGraph"
    "oF/addons/ofxAddonTemplate"
    "oF/addons/ofxBox2d"
    "oF/addons/ofxCv"
    "oF/addons/ofxCvPiCam"
    "oF/addons/ofxEasing"
    "oF/addons/ofxGLWarper"
    "oF/addons/ofxGPIO"
    "oF/addons/ofxMidi"
    "oF/addons/ofxRapidLib"
    "oF/addons/ofxWatchFile"
    "apps/ardour"
)

#forks=(
#    "apps/Orca-c"
#)

for i in "${paths[@]}"
do
    cd "$HOME/$i"
    git fetch -q
    status=`git status | sed -n 2p`
    if [ "$status" != "Your branch is up-to-date with 'origin/master'." ]; then
        echo "[ $i ] $status"
    fi
done

#for i in "${forks[@]}"
#do
#    cd "$HOME/$i"
#    git fetch -q upstream
#    status=`git diff master upstream/master`
#    if [ "$status" != "" ]; then
#        echo "[ $i ] there are difference between your fork and upstream"
#    fi
#done


exit
