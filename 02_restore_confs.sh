#!/bin/bash

# restoring confs
echo "restoring confs"
cp -ar ~/dotfiles/confs/Black-Framework ~/.themes/ 
cp -ar ~/dotfiles/confs/terminator ~/.config/
cp -ar ~/dotfiles/confs/openbox ~/.config
cp ~/dotfiles/confs/tint2rc ~/.config/tint2rc
cp ~/dotfiles/confs/conkyrc ~/.conkyrc
cp ~/dotfiles/confs/gdbinit ~/.gdbinit
cp ~/dotfiles/confs/compton.conf ~/.config/compton.conf 
cp ~/dotfiles/confs/bashrc ~/.bashrc 
cp ~/dotfiles/confs/Xresources ~/.Xresources 
mkdir -p ~/.local/share/applications/
cp ~/dotfiles/confs/mimeapps.list ~/.local/share/applications/mimeapps.list 
cp -ar ~/dotfiles/confs/geany ~/.config/
mkdir -p ~/.config/rncbc.org/
cp ~/dotfiles/confs/QjackCtl.conf  ~/.config/rncbc.org/QjackCtl.conf 
cp  -ar ~/dotfiles/confs/vscode.json ~/.config/Code/User/settings.json 


xfconf-query --channel thunar --property /misc-remember-geometry  --create --type bool --set false
mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp ~/dotfiles/confs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml 

echo "extra themes"
cp -r ~/dotfiles/extra/themes/* ~/.themes/

# restoring bins
echo "restoring bins"
cp -ar ~/dotfiles/bin  ~/
cd ~/bin
chmod +x *.sh

exit
