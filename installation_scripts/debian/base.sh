#! /usr/bin/bash

sudo -v

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
)

apt update -yyy && apt install -yyy ${apps[@]}