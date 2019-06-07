#!/usr/bin/env bash

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

# Set Fish as default shell 
FISH_PATH=$(which fish)
echo ${FISH_PATH} | sudo tee -a /etc/shells
chsh -s ${FISH_PATH}

# Download oh my fish
curl -L https://get.oh-my.fish | fish
omf install bobthefish
