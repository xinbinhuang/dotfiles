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

# Build dependencies for building Python from source using pyenv
# apt install -y make build-essential libssl-dev zlib1g-dev \
#     libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
#     libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl