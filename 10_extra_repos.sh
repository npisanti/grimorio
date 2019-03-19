#!/bin/bash

cd ~/oF/addons

# lua scripting
git clone https://github.com/danomatika/ofxLua.git

# ofxBox2d + liquid / elastic 
git clone https://github.com/tado/ofxLiquidFun.git

# web sockets
git clone https://github.com/robotconscience/ofxLibwebsockets

# preload image sequences, maybe your png streamer is better? 
git clone https://github.com/Flightphase/ofxImageSequence.git  

# text paragraphs
git clone https://github.com/braitsch/ofxParagraph.git

# animatables
git clone https://github.com/armadillu/ofxAnimatable.git
git clone https://github.com/armadillu/ofxHistoryPlot.git

# for multitouch interfaces UI
git clone https://github.com/galsasson/ofxInterface.git

# noise grain, blur, camera distortion
git clone https://github.com/kylemcdonald/ofxCameraFilter.git

# for graphics like modern games engine
git clone https://github.com/nama-gatsuo/ofxDeferredShading.git

# machine learning for gestures, it seems unmantained 
git clone https://github.com/nickgillian/ofxGrt.git

# old homography
git clone https://github.com/paulobarcelos/ofxHomography.git

# i used this in phi
git clone https://github.com/armadillu/ofxFboBlur.git

# kinect & homography calibration
git clone https://github.com/npisanti/ofxKinectProjectorToolkit.git

# tags system for objects
git clone https://github.com/armadillu/ofxTagSystem

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


# processing
mkdir ~/sketchbook
cd ~/sketchbook
git clone https://github.com/GlitchCodec/GLIC
git clone https://github.com/r4dian/Processing-3-glitch-collection.git

exit
