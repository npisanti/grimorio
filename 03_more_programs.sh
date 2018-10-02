#!/bin/bash


echo "installing fonts (requires sudo password)"
cd ~/dotfiles/fonts
sh install_fonts.sh

echo "installing programs..."

mkdir ~/apps

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get install gimp grafx2 aseprite inkscape xsane thunderbird shutter solvespace libreoffice libreoffice-gtk chromium
echo "... remember to set up mails in thunderbird"

sudo apt-get install chkrootkit rkhunter ufw gufw sshfs dnsutils ack-grep nmon fortune cowsay screenfetch moc moc-ffmpeg-plugin winff lame sox cmatrix printer-driver-all input-utils mtdev-tools daemontools guvcview freenect libcups2-dev cups-bsd android-tools-adb android-tools-fastboot vim vim-pathogen vim-gtk lvm2 testdisk trash-cli util-linux procps hostapd iproute2 iw dnsmasq iptables haveged espeak libespeak-dev bluez joystick vokoscreen x264 xdiskusage seahorse inxi figlet toilet toilet-fonts python-pip python-dev python-demjson fontforge alsa-tools-gui shellcheck vorbis-tools lame monkeys-audio cmake screen mosquitto mosquitto-clients build-essential xclip neofetch qv4l2 v4l-utils swig paulstretch

sudo apt-get install kcachegrind krita kdenlive audacity paulstretch 

echo "installing kicad from backports"
sudo apt-get -t stretch-backports install kicad

echo "installing jack utils"
sudo apt-get install qjackctl aconnectgui jack-midi-clock jack-capture

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

echo "python colorsampler"
sudo apt-get install python-pyside python-pyperclip
cd ~/apps
git clone https://github.com/cblgh/colorsampler.git

exit
