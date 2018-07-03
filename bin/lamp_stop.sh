#!/bin/bash
sudo systemctl stop apache2
echo "apache2 stopped"
sudo systemctl stop mysql
echo "mysql stopped"
exit
