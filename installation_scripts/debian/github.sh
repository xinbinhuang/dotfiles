#! /usr/bin/bash

echo "Generating SSh key..."

mkdir -p ~/.ssh

ssh-keygen -t rsa -b 4096 -C github-$(whoami)@$(hostname)
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "Copying the public key to Github: https://github.com/settings/keys"
echo "====================================================================\n"
cat ~/.ssh/id_rsa.pub

echo "\n"
echo "Configure Github login..."
read -p "Github Username: "  github_username
read -p "Github Email: " github_email

git config --global user.name "$github_username"
git config --global user.email "$github_email"