#! /usr/bin/bash

default_file="$HOME/.ssh/id_rsa.pub"

if [ ! -f "$default_file" ]; then
    echo "Generating SSh key..."
    mkdir -p ~/.ssh
    ssh-keygen -t rsa -b 4096 -C github-$(whoami)@$(hostname)
fi

echo "Copying the public key to Github: https://github.com/settings/keys"
echo "====================================================================\n"
cat "$default_file"

echo "\n"
echo "Configure Github login..."
read -p "Github Username: "  github_username
read -p "Github Email: " github_email

git config --global user.name "$github_username"
git config --global user.email "$github_email"