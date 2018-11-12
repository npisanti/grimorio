#!/bin/bash

echo "git config"
git config --global user.name "Nicola Pisanti"
git config --global user.email nicola@npisanti.com
git config --global core.editor geany

echo "installing programs..."

mkdir ~/apps

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get -y install aseprite shutter solvespace grafx2 chkrootkit rkhunter ufw gufw sshfs dnsutils ack-grep nmon fortune cowsay moc moc-ffmpeg-plugin winff lame sox cmatrix input-utils mtdev-tools daemontools guvcview freenect libcups2-dev cups-bsd android-tools-adb android-tools-fastboot vim vim-pathogen vim-gtk lvm2 testdisk trash-cli util-linux procps hostapd iproute2 iw dnsmasq iptables haveged espeak libespeak-dev bluez joystick vokoscreen x264 seahorse inxi figlet toilet toilet-fonts python-pip python-dev python-demjson fontforge alsa-tools-gui shellcheck vorbis-tools lame monkeys-audio cmake screen mosquitto mosquitto-clients build-essential xclip qv4l2 v4l-utils swig

sudo apt-get -y install kcachegrind krita kdenlive audacity paulstretch 

echo "installing kicad from backports"
sudo apt-get -t stretch-backports install kicad

echo "installing jack utils"
sudo apt-get -y install qjackctl aconnectgui jack-midi-clock jack-capture

echo "installing create_ap"
cd ~/apps
git clone https://github.com/oblique/create_ap.git
cd create_ap
sudo make install

echo "installing glslViewer"
sudo apt-get install libglfw3-dev git-core libglu1-mesa-dev libxinerama-dev libxcursor-dev libxi-dev python-setuptools
cd ~/apps
git clone http://github.com/patriciogonzalezvivo/glslViewer
cd glslViewer
make
sudo make install
rm ~/bin/glsl 
ln -s ~/apps/glslViewer/bin/glslViewer ~/bin/glsl

echo "installing of_vscode script"
cd ~/apps
git clone https://github.com/npisanti/of_vscode.git
cd of_vscode
sh install.sh

echo "installing FlameGraph scripts"
cd ~/apps
git clone https://github.com/brendangregg/FlameGraph.git

echo "python colorsampler"
sudo apt-get install python-pyside python-pyperclip
cd ~/apps
git clone https://github.com/cblgh/colorsampler.git

echo "installing more fonts (requires sudo password)"

cd ~/struttura/fonts

sh install_ttf.sh repo
sh install_ttf.sh raleway
sh install_ttf.sh archivo
sh install_ttf.sh terminus-ttf-4.46.0

sh install_otf.sh titillium

exit
