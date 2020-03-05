#! /usr/bin/bash

sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

# Add Dcoker GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo "Verify the key with the fingerprint..."
sudo apt-key fingerprint 0EBFCD88

echo "Add Docker 'stable' channel for x86_64/amd64 architecture..."
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io -yyy

echo "Add user: $USER to the docker group..."
sudo usermod -aG docker $USER