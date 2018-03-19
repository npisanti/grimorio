#!/bin/bash
# $1 is the remote server username id
# $2 is the remote server IP
pihost="pi"
sshfs -d -o allow_other -o reconnect -o ServerAliveInterval=15 "$pihost@169.254.0.2:/home/$pihost" /home/nick/mnt/ssh -C &
sleep 1
thunar ~/mnt/ssh
#umount ~/mnt/ssh
#killall sshfs
#fusermount -u /home/nick/mnt/ssh
exit
