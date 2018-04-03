#!/bin/bash

rm -rf ~/dotfiles/bin/*
cp -ar ~/bin ~/dotfiles/

rm -rf ~/dotfiles/confs/*
cp -ar ~/.themes/Black-Framework/ ~/dotfiles/confs/
cp -ar ~/.config/terminator ~/dotfiles/confs/
cp -ar ~/.config/openbox/ ~/dotfiles/confs/
cp ~/.config/tint2/tint2rc ~/dotfiles/confs/tint2rc
cp ~/.conkyrc ~/dotfiles/confs/conkyrc
cp ~/.gdbinit ~/dotfiles/confs/gdbinit
cp ~/.config/compton.conf ~/dotfiles/confs/compton.conf
cp ~/.bashrc ~/dotfiles/confs/bashrc
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml ~/dotfiles/confs/thunar.xml
cp ~/.local/share/applications/mimeapps.list ~/dotfiles/confs/mimeapps.list
cp ~/.config/dmenu/dmenu-bind.sh ~/dotfiles/confs/dmenu-bind.sh
cp -ar ~/.config/geany/ ~/dotfiles/confs/
rm ~/dotfiles/confs/geany/geany_socket_*

exit
