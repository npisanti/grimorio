#!/bin/bash
# usage: np-hub.sh PASSWORD
sudo create_ap -n --no-virt wlan1 np-hub $1
exit
