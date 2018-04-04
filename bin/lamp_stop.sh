#!/bin/bash
sudo systemctl stop apache2
echo "apache 2 stopped"
sudo systemctl stop mysql
echo "mysql stopped"
exit
