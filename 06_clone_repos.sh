#!/bin/bash

# oF addons -------------------------------------------------------------------
cd ~/oF/addons
folder=${PWD##*/} 
if  [ "$folder" = "addons" ]; then

	git clone https://github.com/npisanti/ofxMidi.git
	git clone https://github.com/npisanti/ofxSIMDFloats.git
	git clone https://github.com/npisanti/ofxPDSP.git
	git clone https://github.com/npisanti/ofxAudioFile.git
    
	git clone https://github.com/npisanti/ofxPDSPPatches.git	
    git clone https://github.com/nariakiiwatani/ofxWatchFile.git

	git clone https://github.com/paulobarcelos/ofxHomography.git

	git clone https://github.com/vanderlin/ofxBox2d.git
	git clone https://github.com/kylemcdonald/ofxCv.git
	git clone https://github.com/npisanti/ofxGuiPresetSelector.git
    git clone https://github.com/Flightphase/ofxImageSequence.git

	git clone https://github.com/dzlonline/ofxBiquadFilter.git
	git clone https://github.com/npisanti/ofxRPiezos.git
	git clone https://github.com/kashimAstro/ofxGPIO.git
	git clone https://github.com/kylemcdonald/ofxFaceTracker.git 
	git clone https://github.com/2bbb/ofxPubSubOsc.git
	
	git clone https://github.com/matsune/ofxReactionDiffusion.git
	git clone https://github.com/kylemcdonald/ofxDmx.git

	git clone https://github.com/npisanti/np-cvthings.git	
	git clone https://github.com/npisanti/np-extra.git	
    git clone https://github.com/npisanti/np-homography.git
    git clone https://github.com/npisanti/np-kinectmotion.git
    git clone https://github.com/npisanti/np-analyzer.git
    
	# cloning my forks, more up to date with oF 0.9.x
	git clone https://github.com/npisanti/ofxKinectProjectorToolkit.git
	git clone https://github.com/npisanti/ofxMorphImage.git
	
    git clone https://github.com/npisanti/ofxLaunchControls.git
    git clone https://github.com/npisanti/ofxDotFrag.git

    git clone https://github.com/openframeworks/ofxAddonTemplate.git

    ln -s ~/oF/addons/ofxPDSP pdsp
        
fi
# -----------------------------------------------------------------------------

# scrapbook
cd ~/oF
git clone https://github.com/npisanti/np-scrapbook.git
ln -s ~/oF/np-scrapbook ~/np-scrapbook

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
git clone https://github.com/npisanti/np-clayblocks.git


# fritzing parts
mkdir ~/fritzing_parts
cd ~/fritzing_parts
git clone https://github.com/lambert/fritzing-parts


# oF examples
cd ~/oF/apps
git clone https://github.com/firmread/NatureOfCode.git
git clone https://github.com/ofZach/VAW_workshop.git
git clone https://github.com/andreasmuller/NoiseWorkshop.git
mkdir jacres
cd jacres
git clone https://github.com/jacres/of-ESMShadowMapping.git
git clone https://github.com/jacres/of-DeferredRendering.git
cd ~/oF/apps
mkdir sfjmt
cd sfjmt
git clone https://github.com/sfjmt/MovingHeadObject.git


# for rpi
cd ~/oF/apps
mkdir osc
cd osc
git clone https://github.com/npisanti/np-picap.git
git clone https://github.com/npisanti/np-pinout.git


exit
