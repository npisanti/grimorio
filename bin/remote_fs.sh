#!/bin/bash
# $1 is the remote server username id
# $2 is the remote server IP
sshfs -d -o allow_other -o reconnect -o ServerAliveInterval=15 "$1@$2:/home/$1" /home/nick/mnt/ssh -C &
sleep 1
thunar ~/mnt/ssh
#umount ~/mnt/ssh
#killall sshfs
#fusermount -u /home/nick/mnt/ssh
exit
