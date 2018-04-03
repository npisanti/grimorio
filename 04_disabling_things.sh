#!/bin/bash

echo "disabling some .desktop and services"
#deactivate nm-applet and lightdm screen locker
#sudo mv /etc/xdg/autostart/nm-applet.desktop /etc/xdg/autostart/nm-applet.desktop.off 
#sudo mv /etc/xdg/autostart/light-locker.desktop /etc/xdg/autostart/light-locker.desktop.off 

# if you have timidity++
sudo systemctl disable timidity.service

# if you have mosquitto / mysql / apache
sudo systemctl disable apache2
sudo systemctl disable mysql
sudo systemctl disable mosquitto
sudo systemctl disable ssh

exit
