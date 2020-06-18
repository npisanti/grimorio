#!/bin/bash

echo "installing LAMP"
sudo apt-get install mariadb-client mariadb-server

sudo apt-get install php7.0 php7.0-mysql apache2 libapache2-mod-php7.0

echo "installing phpmyadmin"
sudo apt-get install phpmyadmin

echo "making links"
sudo ln -s /usr/share/phpmyadmin /var/www/html/
mkdir -p ~/htdocs
sudo ln -s  ~/htdocs /var/www/html/$USER

sleep 2

echo "disabling automatical startup"
sudo systemctl disable apache2
sudo systemctl disable mysql

exit

