#!/bin/bash

echo "changing atp sources.list"
sudo cp  ~/dotfiles/extra/base/sources.list /etc/apt/sources.list
sudo apt-get update

echo "install multimedia keyring"
sudo apt-get install deb-multimedia-keyring

echo "packages update"
sudo apt-get update
sudo apt-get dist-upgrade

echo "installing a pseudo-crunchbang system"
sudo apt-get install alsa-utils amd64-microcode anacron apt-transport-https apt-xapian-index aptitude arandr arj bash-completion btrfs-tools catfish chntpw clipit compton conky-all cpufrequtils curl crda dmz-cursor-theme dosfstools efibootmgr eject enchant evince fbxkb feh file-roller filezilla chromium firmware-b43-installer firmware-b43legacy-installer firmware-linux firmware-ralink firmware-realtek fonts-cantarell fonts-dejavu fonts-droid-fallback fonts-inconsolata fonts-liberation ftp fuse galculator galternatives gdebi geany ghostscript gigolo gksu gmrun gnumeric gparted gsimplecal gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-pulseaudio gvfs gvfs-backends gvfs-fuse hardinfo hdparm hddtemp hexchat htop hwdata i965-va-driver intel-microcode lame libnotify-bin lightdm lm-sensors locales lsb-release lxappearance lzop mirage mlocate modemmanager network-manager nitrogen ntfs-3g ntp obconf obmenu openbox openssh-client p7zip-full pavucontrol pciutils pcmciautils policykit-1-gnome pulseaudio python-keybinder python-notify python-xdg rfkill rpl rsync rzip scrot smartmontools suckless-tools sudo synaptic terminator thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman tint2 transmission-gtk ttf-mscorefonts-installer tumbler unace unalz unar unrar unzip update-inetd usb-modeswitch usbutils user-setup uuid-runtime va-driver-all vdpau-va-driver vlc vlc-plugin-notify xdg-user-dirs xdg-utils xfburn xfce4-notifyd xfce4-power-manager xfce4-screenshooter xinput xorg xsel xz-utils yad zip make acpi tree

echo "installing realtime kernel"
sudo apt-get install linux-image-4.9.0-5-rt-amd64

echo "install more base things"
sudo apt-get install printer-driver-all git geany-plugins cppcheck cloc valgrind grc clang doxygen doxygen-doc doxygen-gui universalindentgui hplip python3-pyqt5

echo "installing updated intel drivers"
sudo apt-get -t stretch-backports install xserver-xorg-video-intel

echo "setting up xinitrc"
cp ~/dotfiles/extra/xinitrc ~/.xinitrc

echo "copying system wide hardware confs"
sudo mkdir -p /usr/share/X11/xorg.conf.d/
sudo cp ~/dotfiles/extra/base/20-intel.conf /usr/share/X11/xorg.conf.d/20-intel.conf
sudo mkdir -p /etc/modprobe.d/
sudo cp ~/dotfiles/extra/kinect-depth.conf /etc/modprobe.d/kinect-depth.conf
sudo cp ~/dotfiles/extra/base/lightdm.conf /etc/lightdm/lightdm.conf
sudo mkdir -p /etc/X11/xorg.conf.d/
sudo cp ~/dotfiles/extra/base/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf

echo "setting up GRUB"
sudo cp extra/base/grub /etc/default/grub
sudo update-grub

echo "making ssh mount directory"
mkdir -p ~/mnt/ssh

echo "sensor detect"
sudo sensors-detect

echo "reconfigure keyboard now, use ctrl+alt+delete to terminate x"
sudo dpkg-reconfigure keyboard-configuration

echo "adding cloudshare DNS to resolv.conf"
echo "prepend domain-name-servers 1.0.0.1;" | sudo tee -a /etc/dhcp/dhclient.conf
echo "prepend domain-name-servers 1.1.1.1;" | sudo tee -a /etc/dhcp/dhclient.conf


echo "setting up realtime limits"
sudo cp ~/dotfiles/extra/base/limits.conf /etc/security/limits.conf  
sudo groupadd realtime
sudo usermod -a -G realtime $USER

echo "adding user to dialout and tty"
sudo usermod -a -G tty $USER
sudo usermod -a -G dialout $USER

# adds .ino, .pde and .fzz from the folder extra_mime_types
echo "installing mime types"
xdg-mime install --novendor ~/dotfiles/extra/mime-types/ino.xml
xdg-mime install --novendor ~/dotfiles/extra/mime-types/pde.xml
xdg-mime install --novendor ~/dotfiles/extra/mime-types/fzz.xml
xdg-mime install --novendor ~/dotfiles/extra/mime-types/frag.xml

echo "installing icons"
mkdir ~/.icons
cd ~/.icons
git clone https://github.com/EmptyStackExn/mono-dark-flattr-icons.git

echo "installing fonts (requires sudo password)"
cd ~/dotfiles/fonts
sh install_fonts.sh

echo "git config"
git config --global user.name "Nicola Pisanti"
git config --global user.email nicola@npisanti.com
git config --global core.editor geany

exit
