#!/bin/bash
sudo systemctl start apache2
echo "apache2 started"
sudo systemctl start mysql
echo "mysql started"
exit
