#!/bin/bash


echo "installing programs..."

mkdir ~/apps

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get install gimp grafx2 aseprite inkscape xsane thunderbird shutter solvespace libreoffice libreoffice-gtk chromium
echo "... remember to set up mails in thunderbird"

sudo apt-get install chkrootkit rkhunter ufw gufw sshfs dnsutils ack-grep nmon fortune cowsay screenfetch moc moc-ffmpeg-plugin winff lame sox cmatrix printer-driver-all input-utils mtdev-tools daemontools guvcview freenect libcups2-dev cups-bsd android-tools-adb android-tools-fastboot vim vim-pathogen vim-gtk lvm2 testdisk trash-cli util-linux procps hostapd iproute2 iw dnsmasq iptables haveged espeak libespeak-dev bluez joystick vokoscreen x264 xdiskusage seahorse inxi figlet toilet toilet-fonts python-pip python-dev python-demjson photoprint fontforge alsa-tools-gui shellcheck vorbis-tools lame monkeys-audio cmake screen mosquitto mosquitto-clients lamp

sudo apt-get install kcachegrind krita kdenlive

sudo apt-get install puredata gem pd-arraysize pd-aubio pd-beatpipe pd-bsaylor pd-comport cyclist pd-cyclone pd-ggee pd-hid pd-iemlib pd-iemmatrix pd-iemnet pd-jmmmp pd-libdir pd-lua pd-motex pd-pddp pd-pdstring pd-purepd pd-readanysf pd-unauthorized pd-vbap pd-wiimote pd-zexy puredata-import

sudo apt-get install audacity paulstretch jack-capture multimedia-audio-plugins multimedia-timestretching ladish hydrogen libfftw3-bin libfftw3-dev zita-rev1 zynaddsubfx-dssi qtractor vkeybd zam-plugins jamin jkmeter


echo "installing kicad from backports"
sudo apt-get -t stretch-backports install kicad


echo "installing create_ap"
git clone https://github.com/oblique/create_ap.git
cd create_ap
sudo make install

echo "installing create_ap"

sudo apt-get install libglfw3-dev git-core

echo "installing glslViewer"
cd ~/apps
git clone http://github.com/patriciogonzalezvivo/glslViewer
cd glslViewer
make
sudo make install

ln -s ~/apps/glslViewer/bin/glslViewer glsl

exit
