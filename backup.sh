#!/bin/bash

rm -rf ~/dotfiles/bin/*
cp -ar ~/bin ~/dotfiles/

rm -rf ~/dotfiles/confs/*
cp -ar ~/.themes/Black-Framework/ ~/dotfiles/confs/
cp -ar ~/.config/terminator ~/dotfiles/confs/
cp -ar ~/.config/openbox/ ~/dotfiles/confs/
cp ~/.config/tint2rc ~/dotfiles/confs/tint2rc
cp ~/.Xresources confs/Xresources
cp ~/.conkyrc ~/dotfiles/confs/conkyrc
cp ~/.gdbinit ~/dotfiles/confs/gdbinit
cp ~/.config/compton.conf ~/dotfiles/confs/compton.conf
cp ~/.bashrc ~/dotfiles/confs/bashrc
cp -r ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml ~/dotfiles/confs/thunar.xml
cp ~/.local/share/applications/mimeapps.list ~/dotfiles/confs/mimeapps.list
cp ~/.config/rncbc.org/QjackCtl.conf ~/dotfiles/confs/
cp -ar ~/.config/geany/ ~/dotfiles/confs/
rm ~/dotfiles/confs/geany/geany_socket_*
cp ~/.config/Code/User/settings.json ~/dotfiles/confs/vscode.json

exit
