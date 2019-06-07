#!/usr/bin/env bash

# Anaconda and Python
ANACONDA_URL=$(curl -s https://www.anaconda.com/distribution/ | grep -oP "https:\/\/repo.anaconda.com\/archive\/Anaconda3-[0-9\.]*-Linux-.*64\.sh(?=\"\s)")
ANACONDA_FILE="install_anaconda.sh"
wget ${ANACONDA_URL} -O ${ANACONDA_FILE}
bash ${ANACONDA_FILE}
rm ${ANACONDA_FILE}
