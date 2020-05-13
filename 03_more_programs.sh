#!/bin/bash

echo "git config"
git config --global user.name "Nicola Pisanti"
git config --global user.email nicola@npisanti.com
git config --global core.editor geany

echo "installing programs..."

mkdir ~/apps

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get -y install hostapd iproute2 iw dnsmasq iptables haveged 

sudo apt-get -y install chkrootkit rkhunter ufw gufw dnsutils ack-grep moc moc-ffmpeg-plugin winff input-utils mtdev-tools daemontools guvcview freenect libcups2-dev cups-bsd android-tools-adb android-tools-fastboot lvm2 testdisk util-linux procps libespeak-dev bluez vokoscreen inxi python-pip python-dev python-demjson alsa-tools-gui cmake screen xclip v4l-utils python-tk gtk2-engines-murrine libappindicator3-1 jamin xfburn gcolor2 

echo "installing lua strict module"
sudo mkdir -p /usr/local/share/lua/5.1/
sudo cp  ~/grimorio/extra/libs/strict.lua  /usr/local/share/lua/5.1/

echo "deactivating geany c tags"
sudo mv /usr/share/geany/tags/std99.c.tags /usr/share/geany/tags/std99.c.disabled
rm ~/.config/geany/tags/*

echo "installing youtube-dl" 
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

echo "install node.js and npm"
sudo apt-get install curl software-properties-common
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt-get install nodejs

echo "installing OrcaJS" 
cd ~/apps
git clone https://github.com/npisanti/Orca.git
cd Orca/desktop
npm install
sudo chown root node_modules/electron/dist/chrome-sandbox
sudo chmod 4755 node_modules/electron/dist/chrome-sandbox  

echo "installing Dotgrid" 
cd ~/apps
git clone https://github.com/hundredrabbits/Dotgrid.git
cd Dotgrid/desktop
npm install 
sudo chown root node_modules/electron/dist/chrome-sandbox
sudo chmod 4755 node_modules/electron/dist/chrome-sandbox  

echo "installing Ronin" 
cd ~/apps
git clone https://github.com/hundredrabbits/Ronin.git
cd Ronin/desktop
npm install 
sudo chown root node_modules/electron/dist/chrome-sandbox
sudo chmod 4755 node_modules/electron/dist/chrome-sandbox  

echo "installing Left" 
cd ~/apps
git clone https://github.com/hundredrabbits/Left.git
cd Left/desktop
npm install 
sudo chown root node_modules/electron/dist/chrome-sandbox
sudo chmod 4755 node_modules/electron/dist/chrome-sandbox  

echo "installing 100r Themes" 
mkdir -p ~/resources
cd ~/resources
git clone https://github.com/hundredrabbits/Themes.git

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
