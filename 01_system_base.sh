#!/bin/bash

echo "packages update"
sudo apt-get update
sudo apt-get dist-upgrade

echo "installing a pseudo crunchbang system"
sudo apt-get install alsa-utils amd64-microcode anacron apt-transport-https apt-xapian-index aptitude arandr arj bash-completion btrfs-tools catfish chntpw clipit compton conky-all cpufrequtils curl crda dmz-cursor-theme dosfstools efibootmgr eject enchant evince fbxkb feh file-roller filezilla firefox-esr firmware-b43-installer firmware-b43legacy-installer firmware-linux firmware-ralink firmware-realtek fonts-cantarell fonts-dejavu fonts-droid fonts-inconsolata fonts-liberation ftp fuse galculator galternatives gdebi geany ghostscript gigolo gksu gmrun gnumeric gparted gsimplecal gstreamer0.10-plugins-good gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-pulseaudio gvfs gvfs-backends gvfs-fuse hardinfo hdparm hddtemp hexchat htop hwdata i965-va-driver intel-microcode lame libnotify-bin lightdm lm-sensors locales lsb-release lxappearance lzop mirage mlocate modemmanager network-manager nitrogen ntfs-3g ntp obconf obmenu openbox openssh-client p7zip-full pavucontrol pciutils pcmciautils policykit-1-gnome pulseaudio pulseaudio-module-x11 python-keybinder python-notify python-xdg rfkill rpl rsync rzip scrot smartmontools suckless-tools sudo synaptic terminator thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman tint2 transmission-gtk ttf-mscorefonts-installer tumbler unace unalz unar unrar unzip update-inetd usb-modeswitch usbutils user-setup uuid-runtime va-driver-all vdpau-va-driver vlc vlc-plugin-notify volumeicon-alsawireless-tools xdg-user-dirs xdg-utils xfburn xfce4-notifyd xfce4-power-manager xfce4-screenshooter xinput xorg xsel xz-utils yad zip 

echo "install more base things"
sudo apt-get install printer-driver-all git geany-plugins cppcheck cloc valgrind grc clang doxygen doxygen-doc doxygen-gui universalindentgui qjackctl aconnectgui jack-midi-clock 

sudo apt-get install librtaudio5 librtaudio-dev 

echo "adding backports repos"
echo "deb http://ftp.debian.org/debian stretch-backports main" | sudo tee -a /etc/apt/sources.list
echo "adding multimedia repos"
echo "deb http://www.deb-multimedia.org stretch main non-free" | sudo tee -a /etc/apt/sources.list

echo "updating again"
sudo apt-get update
sudo apt-get dist-upgrade
apt-get install deb-multimedia-keyring

echo "installing updated intel drivers"
sudo apt-get -t stretch-backports install xserver-xorg-video-intel

echo "setting up xinitrc"
cp ~/dotfiles/extra/xinitrc ~/.xinitrc

exit
