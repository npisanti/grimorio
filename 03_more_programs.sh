#!/bin/bash

echo "git config"
git config --global user.name "Nicola Pisanti"
git config --global user.email nicola@npisanti.com
git config --global core.editor geany

echo "installing programs..."

mkdir ~/apps

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get -y install aseprite shutter solvespace grafx2 chkrootkit rkhunter ufw gufw sshfs dnsutils ack-grep nmon fortune cowsay moc moc-ffmpeg-plugin winff lame sox cmatrix input-utils mtdev-tools daemontools guvcview freenect libcups2-dev cups-bsd android-tools-adb android-tools-fastboot vim vim-pathogen vim-gtk lvm2 testdisk trash-cli util-linux procps hostapd iproute2 iw dnsmasq iptables haveged espeak libespeak-dev bluez joystick vokoscreen x264 seahorse inxi figlet toilet toilet-fonts python-pip python-dev python-demjson fontforge alsa-tools-gui shellcheck vorbis-tools lame monkeys-audio cmake screen mosquitto mosquitto-clients build-essential xclip qv4l2 v4l-utils swig python-tk libncurses5-dev libncursesw5-dev paulstretch audacity supercollider gtk2-engines-murrine libappindicator3-1 telegram-desktop

sudo apt-get -y install kcachegrind krita kdenlive

echo "installing kicad from backports"
sudo apt-get -t stretch-backports install kicad

echo "installing jack utils"
sudo apt-get -y install qjackctl aconnectgui jack-midi-clock jack-capture

echo "setting up realtime limits"
sudo cp ~/grimorio/extra/base/limits.conf /etc/security/limits.conf  
sudo groupadd realtime
sudo usermod -a -G realtime $USER

echo "installing create_ap"
cd ~/apps
git clone https://github.com/oblique/create_ap.git
cd create_ap
sudo make install

echo "installing fff"
cd ~/apps
git clone https://github.com/dylanaraps/fff

echo "installing Orca-c" 
cd ~/apps
sudo apt-get install libportmidi-dev libncurses5-dev libncursesw5-dev
git clone https://github.com/npisanti/Orca-c.git
cd Orca-c
git remote add upstream https://github.com/hundredrabbits/Orca-c.git
./tool --portmidi build release orca 

echo "installing OrcaJS" 
cd ~/apps
git clone https://github.com/npisanti/Orca.git
cd Orca/desktop
npm install

echo "installing Dotgrid" 
cd ~/apps
https://github.com/hundredrabbits/Dotgrid.git
cd Dotgrid/desktop
npm install 

echo "installing 100r Themes" 
cd ~/apps
https://github.com/hundredrabbits/Themes.git

echo "installing FlameGraph scripts"
cd ~/apps
git clone https://github.com/brendangregg/FlameGraph.git

echo "getting Processing 3"
cd ~/apps
wget download.processing.org/processing-3.5.2-linux64.tgz
tar -xvzf processing-3.5.2-linux64.tgz

echo "getting Ossia Score v1"
cd ~/apps
wget https://github.com/OSSIA/score/releases/download/v1.0.0-b40/Score-v1.0.0-b40-amd64.AppImage
chmod +x Score-*

echo "installing Etcher"
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sudo apt-get update
sudo apt-get  -y install balena-etcher-electron

echo "installing more fonts (requires sudo password)"

cd ~/grimorio/fonts

sh install_ttf.sh repo
sh install_ttf.sh raleway
sh install_ttf.sh archivo
sh install_ttf.sh terminus-ttf-4.46.0

sh install_otf.sh titillium

exit
