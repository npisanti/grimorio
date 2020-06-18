#!/bin/bash

# private repos
mkdir -p ~/bureau
cd ~/bureau

git clone https://gitlab.com/npisanti/scartoffie.git
git clone https://gitlab.com/npisanti/fatture.git

cd ~
git clone https://github.com/npisanti/lists.git

exit
