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

	git clone https://github.com/npisanti/np-extra.git
    git clone https://github.com/npisanti/np-patches.git

	# cloning my forks, more up to date
	git clone https://github.com/npisanti/ofxKinectProjectorToolkit.git

    # cloning essentials addon that i have used
	git clone https://github.com/danomatika/ofxMidi.git
    git clone https://github.com/nariakiiwatani/ofxWatchFile.git
	git clone https://github.com/paulobarcelos/ofxHomography.git
	git clone https://github.com/kylemcdonald/ofxCv.git
	git clone https://github.com/dzlonline/ofxBiquadFilter.git
	git clone https://github.com/kashimAstro/ofxGPIO.git
	git clone https://github.com/matsune/ofxReactionDiffusion.git
	git clone https://github.com/kylemcdonald/ofxDmx.git
    git clone https://github.com/openframeworks/ofxAddonTemplate.git
    git clone https://github.com/sebleedelisle/ofxLaser.git
    git clone https://github.com/nickgillian/ofxGrt.git
    git clone https://github.com/roymacdonald/ofxGLWarper.git
    git clone https://github.com/orgicus/ofxCvPiCam.git
        rm -rf ofxCvPiCam/libs/mmal
    git clone https://github.com/armadillu/ofxFboBlur.git
    
    # i always have those but still have to use it in a project
    git clone https://github.com/galsasson/ofxNanoVG.git
        cd ofxNanoVG
        git submodule init
        git submodule update
    cd ~/oF/addons
    
    git clone https://github.com/robotconscience/ofxLibwebsockets
    git clone https://github.com/Flightphase/ofxImageSequence.git
	git clone https://github.com/vanderlin/ofxBox2d.git
    git clone https://github.com/braitsch/ofxParagraph.git
    git clone https://github.com/arturoc/ofxEasing.git
    git clone https://github.com/armadillu/ofxAnimatable.git
    git clone https://github.com/armadillu/ofxHistoryPlot.git
    git clone https://github.com/galsasson/ofxInterface.git


    ln -s ~/oF/addons/ofxPDSP ~/pdsp

fi
# -----------------------------------------------------------------------------

# clone my website
mkdir ~/htdocs
cd ~/htdocs
git clone https://github.com/npisanti/npisanti-nocms.git

#clone resistor color code tool
git clone https://github.com/joewalnes/resisto.rs.git

# processing
mkdir ~/sketchbook
cd ~/sketchbook
git clone https://github.com/GlitchCodec/GLIC

# fritzing parts
mkdir ~/fritzing_parts
cd ~/fritzing_parts
git clone https://github.com/lambert/fritzing-parts

# oF examples
cd ~/oF/apps

git clone https://github.com/firmread/NatureOfCode.git
git clone https://github.com/ofZach/VAW_workshop.git
git clone https://github.com/SAIC-ATS/ARTTECH-3039.git
git clone https://github.com/andreasmuller/NoiseWorkshop.git
mkdir jacres
cd jacres
git clone https://github.com/jacres/of-ESMShadowMapping.git
git clone https://github.com/jacres/of-DeferredRendering.git

exit
