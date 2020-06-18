#!/bin/bash

# TODO : ask if a sourcehut ssh keys has already been generated 

echo "git config"
git config --global user.name "Nicola Pisanti"
git config --global user.email nicola@npisanti.com
git config --global core.editor micro 

echo "adding cloudshare DNS to resolv.conf"
echo "prepend domain-name-servers 1.0.0.1;" | sudo tee -a /etc/dhcp/dhclient.conf
echo "prepend domain-name-servers 1.1.1.1;" | sudo tee -a /etc/dhcp/dhclient.conf

echo "installing programs..."

mkdir -p ~/apps
mkdir -p ~/tools 

echo "installing lua strict module"
sudo mkdir -p /usr/local/share/lua/5.1/
sudo cp  ~/grimorio/extra/libs/strict.lua  /usr/local/share/lua/5.1/

echo "installing micro text editor"
curl https://getmic.ro | bash
sudo mv micro /usr/local/bin/

cd ~/apps
git clone https://github.com/brendangregg/FlameGraph.git

echo "installing create_ap"
cd ~/apps
git clone https://github.com/oblique/create_ap.git
cd create_ap
sudo make install

echo "installing youtube-dl" 
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

echo "installing orca" 
cd ~/tools
sudo apt-get install libportmidi-dev libncurses5-dev libncursesw5-dev
git clone https://git.sr.ht/~rabbits/orca
cd orca
./tool build --nomouse orca 

echo "installing folderkit"
sudo apt-get install liblo-dev libjack-dev libfftw3-dev libfftw3-single3 
cd ~/tools
git clone git@git.sr.ht:~npisanti/folderkit
cd folderkit 
make

echo "installing raylyeh" 
cd ~/tools
sudo apt-get install libv4l-0 libv4l-dev liblo7 liblo-dev
git@git.sr.ht:~npisanti/raylyeh
cd raylyeh 
mkdir libs
cd libs 
git clone https://github.com/raysan5/raylib
cd raylib
sudo apt install libasound2-dev mesa-common-dev libx11-dev libxrandr-dev libxi-dev xorg-dev libgl1-mesa-dev libglu1-mesa-dev
make 
sudo make install 
cd ..
git clone https://luajit.org/git/luajit-2.0.git
cd luajit-2.0
git checkout v2.1
make
cd ..
make

echo "getting rl_tools"
cd ~/tools
git clone git@git.sr.ht:~npisanti/rl_tools

exit
