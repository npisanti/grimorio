#!/bin/bash
declare -a paths

paths=(
    "grimorio"
    "htdocs/npisanti-nocms"
    "oF/addons/ofxPDSP"
    "oF/addons/ofxAudioFile"
    "oF/addons/ofxSIMDFloats"
    "oF/addons/ofxClayblocks"
    "oF/addons/ofxLaunchControllers"
    "oF/addons/ofxGuiPresetSelector"
    "oF/addons/ofxDotFrag"
    "oF/addons/ofxFixture"
    "oF/addons/np-extra"
    "oF/addons/np-patches"
    "oF/addons/np-analyzer"
    "oF/addons/np-luavg"
    "oF/apps/np-miscela"
    "oF/apps/orcamenti"
    "oF/apps/orca-snippets"
    "oF/apps/motore_entropico"
    "oF/apps/sketches"
    "oF/apps/stubs"
    "oF/apps/instruments"
    "oF/apps/utilities"
    "np-scrapbook"
    "workspace/graphics"
    "workspace/bashcode"
    "workspace/fatture"
    "workspace/scartoffie"
)

nothingtocommit="true"

for i in "${paths[@]}"
do
    cd "$HOME/$i"
    status=`git status --ignore-submodules | sed -n 3p`
    if [ "$status" == "  (use \"git push\" to publish your local commits)" ]; then
        echo "> $i"
        nothingtocommit="false"
    elif [ "$status" != "nothing to commit, working tree clean" ]; then
        echo "$i"
        nothingtocommit="false"
    fi
done

if [ "$nothingtocommit" = "true" ]; then
    echo "nothing to commit"
fi

exit
