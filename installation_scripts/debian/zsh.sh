#! /usr/bin/bash

sudo -v

apt install zsh

echo "Install oh-my-zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "Configure zsh as default shell"
chsh -s $(which zsh)

