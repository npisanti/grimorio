#!/bin/bash

# private repos
cd ~/oF/apps
git clone https://gitlab.com/npisanti/artefatti.git
git clone https://gitlab.com/npisanti/miscela.git
git clone https://gitlab.com/npisanti/np-sketches.git sketches
git clone https://gitlab.com/npisanti/np-stubs.git stubs
git clone https://gitlab.com/npisanti/scrittura.git
git clone https://gitlab.com/npisanti/np-instruments.git

mkdir -p ~/mixed 
cd ~/mixed
git clone https://gitlab.com/npisanti/graphicsrepo.git graphics
git clone https://gitlab.com/npisanti/bashcode.git

exit
