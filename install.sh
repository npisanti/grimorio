#!/bin/bash

# restoring confs
echo "restoring confs"
cp -ar ~/dotfiles/confs/Black-Framework ~/.themes/ 
cp -ar ~/dotfiles/confs/terminator ~/.config/
cp -ar ~/dotfiles/confs/openbox ~/.config
cp ~/dotfiles/confs/tint2rc ~/.config/tint2
cp ~/dotfiles/confs/conkyrc ~/.conkyrc
cp ~/dotfiles/confs/gdbinit ~/.gdbinit 
cp ~/dotfiles/confs/bashrc ~/.bashrc 
cp ~/dotfiles/confs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml 
cp ~/dotfiles/confs/mimeapps.list ~/.local/share/applications/mimeapps.list 
cp ~/dotfiles/confs/dmenu-bind.sh ~/.config/dmenu/dmenu-bind.sh 
cp -ar ~/dotfiles/confs/geany ~/.config/

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

exit
