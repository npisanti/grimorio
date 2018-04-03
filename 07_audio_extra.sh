#!/bin/bash

echo "installing jack utils"
sudo apt-get install qjackctl aconnectgui jack-midi-clock 

echo "installing pure data things"
sudo apt-get install puredata gem pd-arraysize pd-aubio pd-beatpipe pd-bsaylor pd-comport cyclist pd-cyclone pd-ggee pd-hid pd-iemlib pd-iemmatrix pd-iemnet pd-jmmmp pd-libdir pd-lua pd-motex pd-pddp pd-pdstring pd-purepd pd-readanysf pd-unauthorized pd-vbap pd-wiimote pd-zexy puredata-import

echo "installing extra audio plugins"
sudo apt-get install audacity paulstretch jack-capture multimedia-audio-plugins multimedia-timestretching ladish hydrogen libfftw3-bin libfftw3-dev zita-rev1 zynaddsubfx-dssi qtractor vkeybd zam-plugins jamin jkmeter

exit
