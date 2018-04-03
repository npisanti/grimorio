#!/bin/bash

# base install
echo "copying system wide hardware confs"
sudo cp ~/dotfiles/extra/base/20-intel.conf usr/share/X11/xorg.conf.d/20-intel.conf
sudo cp ~/dotfiles/extra/kinect-depth.conf /etc/modprobe.d/kinect-depth.conf 
sudo cp ~/dotfiles/extra/base/lightdm.conf /etc/lightdm/lightdm.conf

echo "setting up GRUB"
sudo cp extra/base/grub /etc/default/grub
sudo update-grub

echo "making ssh mount directory"
mkdir ~/mnt/ssh

echo "sensor detect"
sudo sensors-detect

echo "reconfigure keyboard now, use ctrl+alt+delete to terminate x"
sudo dpkg-reconfigure keyboard-configuration

echo "adding cloudshare DNS to resolv.conf"
echo "nameserver 1.1.1.1" | sudo tee -a /etc/resolv.conf
echo "nameserver 1.0.0.1" | sudo tee -a /etc/resolv.conf


# restoring confs
echo "restoring confs"
cp -ar ~/dotfiles/confs/Black-Framework ~/.themes/ 
cp -ar ~/dotfiles/confs/terminator ~/.config/
cp -ar ~/dotfiles/confs/openbox ~/.config
cp ~/dotfiles/confs/tint2rc ~/.config/tint2
cp ~/dotfiles/confs/conkyrc ~/.conkyrc
cp ~/dotfiles/confs/gdbinit ~/.gdbinit
cp ~/dotfiles/confs/compton.conf ~/.config/compton.conf 
cp ~/dotfiles/confs/bashrc ~/.bashrc 
cp ~/dotfiles/confs/mimeapps.list ~/.local/share/applications/mimeapps.list 
cp ~/dotfiles/confs/dmenu-bind.sh ~/.config/dmenu/dmenu-bind.sh 
cp -ar ~/dotfiles/confs/geany ~/.config/

xfconf-query --channel thunar --property /misc-remember-geometry  --create --type bool --set false
cp ~/dotfiles/confs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml 

# restoring bins
echo "restoring bins"
cp -ar ~/dotfiles/bin  ~/
cd ~/bin
chmod +x *.sh

# adds .ino, .pde and .fzz from the folder extra_mime_types
echo "installing mime types"
xdg-mime install --novendor ~/dotfiles/extra/mime-types/ino.xml
xdg-mime install --novendor ~/dotfiles/extra/mime-types/pde.xml
xdg-mime install --novendor ~/dotfiles/extra/mime-types/fzz.xml
xdg-mime install --novendor ~/dotfiles/extra/mime-types/frag.xml

echo "installing icons"
# Install Mono Dark Flattr or Luv iconsets
#cd /usr/share/icons
#sudo git clone https://github.com/EmptyStackExn/mono-dark-flattr-icons.git
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
