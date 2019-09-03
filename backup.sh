#!/bin/bash

rm -rf ~/grimorio/confs/*
cp -ar ~/.themes/Black-Framework/ ~/grimorio/confs/
cp -ar ~/.config/terminator ~/grimorio/confs/
cp -ar ~/.config/openbox/ ~/grimorio/confs/
cp ~/.config/tint2rc ~/grimorio/confs/tint2rc
cp ~/.Xresources confs/Xresources
cp ~/.conkyrc ~/grimorio/confs/conkyrc
cp ~/.gdbinit ~/grimorio/confs/gdbinit
cp ~/.config/compton.conf ~/grimorio/confs/compton.conf
cp ~/.bashrc ~/grimorio/confs/bashrc
cp ~/.xbindkeysrc ~/grimorio/confs/xbindkeysrc
cp -r ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml ~/grimorio/confs/thunar.xml
cp ~/.local/share/applications/mimeapps.list ~/grimorio/confs/mimeapps.list
#cp ~/.config/Code/User/settings.json ~/grimorio/confs/vscode.json
cp ~/.config/redshift.conf ~/grimorio/confs/redshift.conf
cp ~/.config/bl-exit/bl-exitrc ~/grimorio/confs/
cp ~/.gtkrc-2.0 ~/grimorio/confs/gtkrc-2.0

mkdir -p ~/grimorio/confs/geany/colorschemes
mkdir -p ~/grimorio/confs/geany/filedefs
mkdir -p ~/grimorio/confs/geany/plugins/treebrowser
cp ~/.config/geany/colorschemes/sands.conf ~/grimorio/confs/geany/colorschemes
cp ~/.config/geany/colorschemes/less.conf ~/grimorio/confs/geany/colorschemes
cp ~/.config/geany/filedefs/filetypes.cpp ~/grimorio/confs/geany/filedefs
cp ~/.config/geany/plugins/treebrowser/treebrowser.conf ~/grimorio/confs/geany/plugins/treebrowser
cp ~/.config/geany/geany.conf ~/grimorio/confs/geany
cp ~/.config/geany/keybindings.conf ~/grimorio/confs/geany

cp ~/.config/mpv/mpv.conf ~/grimorio/confs/mpv.conf

exit
