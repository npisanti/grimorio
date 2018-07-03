#!/bin/bash
#sudo ifconfig eth0 169.254.0.1
sudo ip addr add 169.254.0.1/24 dev enp0s25
exit
