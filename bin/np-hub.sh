#!/bin/bash
# usage: np-hub.sh PASSWORD
sudo create_ap -n --no-virt wlp3s0 np-hub $1
exit
