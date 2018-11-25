#!/bin/bash

# restoring confs
echo "restoring confs"
cp -ar ~/struttura/confs/Black-Framework ~/.themes/ 
cp -ar ~/struttura/confs/terminator/config ~/.config/terminator/config
cp -ar ~/struttura/confs/openbox ~/.config
cp ~/struttura/confs/tint2rc ~/.config/tint2rc
cp ~/struttura/confs/conkyrc ~/.conkyrc
cp ~/struttura/confs/gdbinit ~/.gdbinit
cp ~/struttura/confs/compton.conf ~/.config/compton.conf 
cp ~/struttura/confs/bashrc ~/.bashrc 
cp ~/struttura/confs/Xresources ~/.Xresources 
mkdir -p ~/.local/share/applications/
cp ~/struttura/confs/mimeapps.list ~/.local/share/applications/mimeapps.list 
mkdir -p ~/.config/rncbc.org/
cp ~/struttura/confs/QjackCtl.conf  ~/.config/rncbc.org/QjackCtl.conf 
cp -ar ~/struttura/confs/vscode.json ~/.config/Code/User/settings.json 
cp ~/struttura/confs/redshift.conf ~/.config/redshift.conf
cp ft.conf
cp ~/struttura/confs/bl-exitrc  ~/.config/bl-exit/bl-exitrc 

xfconf-query --channel thunar --property /misc-remember-geometry  --create --type bool --set false
mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp ~/struttura/confs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml 

echo "extra themes"
cp -r ~/struttura/extra/themes/* ~/.themes/

# restoring bins
echo "restoring bins"
cp -ar ~/struttura/bin  ~/
cd ~/bin
chmod +x *.sh

exit
