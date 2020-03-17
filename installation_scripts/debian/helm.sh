#! /usr/bin/bash

SCRIPT=get_helm.sh

curl -fsSL -o ~/$SCRIPT https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 ~/$SCRIPT
~/$SCRIPT