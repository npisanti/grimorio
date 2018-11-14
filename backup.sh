#!/bin/bash

rm -rf ~/struttura/bin/*
cp -ar ~/bin ~/struttura/

rm -rf ~/struttura/confs/*
cp -ar ~/.themes/Black-Framework/ ~/struttura/confs/
cp -ar ~/.config/terminator ~/struttura/confs/
cp -ar ~/.config/openbox/ ~/struttura/confs/
cp ~/.config/tint2rc ~/struttura/confs/tint2rc
cp ~/.Xresources confs/Xresources
cp ~/.conkyrc ~/struttura/confs/conkyrc
cp ~/.gdbinit ~/struttura/confs/gdbinit
cp ~/.config/compton.conf ~/struttura/confs/compton.conf
cp ~/.bashrc ~/struttura/confs/bashrc
cp -r ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml ~/struttura/confs/thunar.xml
cp ~/.local/share/applications/mimeapps.list ~/struttura/confs/mimeapps.list
cp ~/.config/rncbc.org/QjackCtl.conf ~/struttura/confs/
cp ~/.config/Code/User/settings.json ~/struttura/confs/vscode.json
cp ~/.config/redshift.conf ~/struttura/confs/redshift.conf

exit
