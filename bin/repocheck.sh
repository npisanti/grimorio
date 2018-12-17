#!/bin/bash
declare -a paths

paths[0]="/home/$USER/oF/addons/ofxSIMDFloats"
paths[1]="/home/$USER/oF/addons/ofxAudioFile"
paths[2]="/home/$USER/oF/addons/ofxClayblocks"
paths[3]="/home/$USER/oF/addons/ofxPDSP"
paths[4]="/home/$USER/oF/addons/ofxLaunchControllers"
paths[5]="/home/$USER/oF/addons/ofxPDSP"
paths[6]="/home/$USER/oF/addons/ofxDotFrag"
paths[7]="/home/$USER/oF/addons/ofxFixture"
paths[8]="/home/$USER/oF/addons/np-extra"
paths[9]="/home/$USER/oF/addons/np-patches"
paths[10]="/home/$USER/htdocs/npisanti-nocms"
paths[11]="/home/$USER/graphicsrepo"
paths[12]="/home/$USER/bashcode"
paths[13]="/home/$USER/oF/apps/artefatti"
paths[14]="/home/$USER/oF/apps/miscela"
paths[15]="/home/$USER/oF/apps/sketches"
paths[15]="/home/$USER/oF/apps/stubs"
paths[17]="/home/$USER/oF/apps/scrittura"
paths[18]="/home/$USER/grimorio"

nothingtocommit="true"

for i in "${paths[@]}"
do
    cd "$i"
    status=`git status | sed -n 3p`
    if [ "$status" != "nothing to commit, working tree clean" ]; then
        echo "changes to commit in folder $i"
        nothingtocommit="false"
    fi
done

if [ "$nothingtocommit" = "true" ]; then
    echo "nothing to commit at all"
fi

exit
