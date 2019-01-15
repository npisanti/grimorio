#!/bin/bash

echo "changing atp sources.list"
sudo cp  ~/grimorio/extra/base/sources.list /etc/apt/sources.list
sudo apt-get update

echo "install multimedia keyring"
sudo apt-get install deb-multimedia-keyring

echo "packages update"
sudo apt-get update
sudo apt-get dist-upgrade

exit
