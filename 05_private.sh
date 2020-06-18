#!/bin/bash

# private repos
mkdir -p ~/bureau
cd ~/bureau

git clone https://gitlab.com/npisanti/scartoffie.git
git clone https://gitlab.com/npisanti/fatture.git


# TODO use wall in sourcehut instead 
cd ~
git clone https://github.com/npisanti/wall.git

exit
