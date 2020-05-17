#!/bin/bash
# usage: np-hub.sh PASSWORD
read -s -p "insert spot password: " pass
echo ""
sudo create_ap -n --no-virt wlp2s0 np-hotspot $pass
exit
