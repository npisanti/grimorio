#!/bin/bash
declare -a paths

paths=(
    "grimorio"
    "htdocs/npisanti-nocms"
    "oF/addons/ofxPDSP"
    "oF/addons/ofxAudioFile"
    "oF/addons/ofxClayblocks"
    "oF/addons/ofxDotFrag"
    "oF/addons/np-extra"
    "oF/addons/np-patches"
    "oF/addons/np-pixelscript"
    "lab/orca-snippets"
    "oF/apps/np-tools"
    "lab/scrapbook"
)

nothingtocommit="true"

for i in "${paths[@]}"
do
    cd "$HOME/$i"
    status=`git status --ignore-submodules | sed -n 4p`
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
