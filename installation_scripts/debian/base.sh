#! /usr/bin/bash

apps=(
    git
    coreutils
    moreutils
    findutils
    build-essential
    thefuck
    tree
    psmisc
    htop
    glances
    postgresql-client
    zsh
)

sudo apt update -yyy && sudo apt install -yyy ${apps[@]}