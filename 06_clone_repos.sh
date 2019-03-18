#!/bin/bash

# oF addons -------------------------------------------------------------------
cd ~/oF/addons
folder=${PWD##*/}
if  [ "$folder" = "addons" ]; then

    # cloning my repos
	git clone https://github.com/npisanti/ofxSIMDFloats.git
	git clone https://github.com/npisanti/ofxAudioFile.git
	git clone https://github.com/npisanti/ofxPDSP.git
	git clone https://github.com/npisanti/ofxClayblocks.git
    git clone https://github.com/npisanti/ofxLaunchControllers.git
    git clone https://github.com/npisanti/ofxDotFrag.git
    git clone https://github.com/npisanti/ofxFixture.git
    git clone https://github.com/npisanti/ofxGuiPresetSelector.git

	git clone https://github.com/npisanti/np-extra.git
    git clone https://github.com/npisanti/np-patches.git

	# cloning my forks, more up to date
	git clone https://github.com/npisanti/ofxDmx.git

    # cloning essentials addon that i have used
	git clone https://github.com/danomatika/ofxMidi.git
    git clone https://github.com/nariakiiwatani/ofxWatchFile.git
	git clone https://github.com/kylemcdonald/ofxCv.git
	git clone https://github.com/dzlonline/ofxBiquadFilter.git
	git clone https://github.com/kashimAstro/ofxGPIO.git
	git clone https://github.com/matsune/ofxReactionDiffusion.git
    git clone https://github.com/openframeworks/ofxAddonTemplate.git
    git clone https://github.com/sebleedelisle/ofxLaser.git

    git clone https://github.com/roymacdonald/ofxGLWarper.git
    git clone https://github.com/orgicus/ofxCvPiCam.git
        rm -rf ofxCvPiCam/libs/mmal
    git clone https://github.com/kylemcdonald/ofxBlur.git

    # i always have those but still have to use it in a project
    git clone https://github.com/satoruhiga/ofxNanoVG.git

    cd ~/oF/addons
    
    git clone https://github.com/arturoc/ofxEasing.git
	git clone https://github.com/vanderlin/ofxBox2d.git
    git clone https://github.com/danomatika/ofxLua.git
    
    ln -s ~/oF/addons/ofxPDSP ~/pdsp

fi
# -------------------------------------------------------------------

# clone my website
mkdir ~/htdocs
cd ~/htdocs
git clone https://github.com/npisanti/npisanti-nocms.git

# my apps
cd ~/oF/apps
git clone https://github.com/npisanti/motore_entropico.git
git clone https://github.com/npisanti/np-instruments.git instruments
git clone https://github.com/npisanti/np-stubs.git stubs
git clone https://github.com/npisanti/np-sketches.git sketches
git clone https://github.com/npisanti/np-utilities.git utilities
git clone https://github.com/npisanti/orcamenti.git
git clone https://github.com/npisanti/orca-snippets.git
git clone https://github.com/npisanti/np-miscela.git

# clone scrapbook
cd ~
git clone https://github.com/npisanti/np-scrapbook.git

# bash code and graphics
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/npisanti/bashcode.git
git clone https://github.com/npisanti/graphicsrepo.git graphics

# oF examples
cd ~/oF/apps
git clone https://github.com/firmread/NatureOfCode.git
git clone https://github.com/ofZach/VAW_workshop.git

#clone resistor color code tool
git clone https://github.com/joewalnes/resisto.rs.git

exit
