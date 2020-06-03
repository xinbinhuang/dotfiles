#! /usr/bin/bash

SCRIPT=get_helm.sh

curl -fsSL https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 -o ~/$SCRIPT
chmod 700 ~/$SCRIPT
. ~/$SCRIPT
rm ~/$SCRIPT