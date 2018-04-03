#!/bin/bash

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
cp ~/dotfiles/confs/Xresources ~/.Xresources 
cp ~/dotfiles/confs/mimeapps.list ~/.local/share/applications/mimeapps.list 
cp ~/dotfiles/confs/dmenu-bind.sh ~/.config/dmenu/dmenu-bind.sh 
cp -ar ~/dotfiles/confs/geany ~/.config/
cp ~/dotfiles/confs/QjackCtl.conf  ~/.config/rncbc.org/QjackCtl.conf 

xfconf-query --channel thunar --property /misc-remember-geometry  --create --type bool --set false
cp ~/dotfiles/confs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml 

# restoring bins
echo "restoring bins"
cp -ar ~/dotfiles/bin  ~/
cd ~/bin
chmod +x *.sh

exit
