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

cp ~/.config/redshift.conf ~/grimorio/confs/redshift.conf
cp ~/.config/bl-exit/bl-exitrc ~/grimorio/confs/
cp ~/.gtkrc-2.0 ~/grimorio/confs/gtkrc-2.0

cp ~/.config/mpv/mpv.conf ~/grimorio/confs/mpv.conf

cp -ar ~/.config/micro/ ~/grimorio/confs/
cp ~/.tmux.conf ~/grimorio/confs/tmux.conf

cp ~/.config/cmus/rc ~/grimorio/confs/cmusrc

exit
