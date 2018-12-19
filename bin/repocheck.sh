#!/bin/bash
declare -a paths

paths[0]="grimorio"
paths[1]="oF/addons/ofxAudioFile"
paths[2]="oF/addons/ofxClayblocks"
paths[3]="oF/addons/ofxPDSP"
paths[4]="oF/addons/ofxLaunchControllers"
paths[5]="oF/addons/ofxGuiPresetSelector"
paths[6]="oF/addons/ofxDotFrag"
paths[7]="oF/addons/ofxFixture"
paths[8]="oF/addons/np-extra"
paths[9]="oF/addons/np-patches"
paths[10]="htdocs/npisanti-nocms"
paths[11]="mixed/graphics"
paths[12]="mixed/bashcode"
paths[13]="oF/apps/artefatti"
paths[14]="oF/apps/miscela"
paths[15]="oF/apps/sketches"
paths[15]="oF/apps/stubs"
paths[17]="oF/apps/scrittura"
paths[18]="oF/addons/ofxSIMDFloats"
paths[19]="oF/apps/np-instruments"

nothingtocommit="true"

for i in "${paths[@]}"
do
    cd "$HOME/$i"
    status=`git status | sed -n 3p`
    if [ "$status" != "nothing to commit, working tree clean" ]; then
        echo "$i"
        nothingtocommit="false"
    fi
done

if [ "$nothingtocommit" = "true" ]; then
    echo "nothing to commit at all"
fi

exit
