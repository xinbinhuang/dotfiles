#! /usr/bash/bash

MINICONDA=miniconda
INSTALL_SCRIPT=${MINICONDA}.sh

install_conda() {
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/$INSTALL_SCRIPT
    bash ~/$INSTALL_SCRIPT -b -p $HOME/$MINICONDA
    rm ~/$INSTALL_SCRIPT

    # init conda
    eval "$($HOME/$MINICONDA/bin/conda shell.bash hook)"
    conda init

    # disable conda shell at startup
    # conda config --set auto_activate_base false
}

install_pkgs() {
    conda install -c conda-forge -y $@
}

BASE_PKGS=(
    numpy
    pandas
    matplotlib
    seaborn
    scikit-learn
    jupyterlab
    flask
)

install_conda
install_pkgs ${BASE_PKGS[@]} 


