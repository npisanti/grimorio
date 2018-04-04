#!/bin/bash
sudo systemctl start apache2
echo "apache 2 started"
sudo systemctl start mysql
echo "mysql started"
exit
