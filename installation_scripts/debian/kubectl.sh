#! /usr/bin/bash

EXPORT_FILE=$ZSH_CUSTOM/exports.zsh

sudo apt install kubectl -yyy

# kubectl plugin: krew
(
  set -x; cd "$(mktemp -d)" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.{tar.gz,yaml}" &&
  tar zxvf krew.tar.gz &&
  KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" &&
  "$KREW" install --manifest=krew.yaml --archive=krew.tar.gz &&
  "$KREW" update
)

echo '\n# kubectl plugin: krew' >> $EXPORT_FILE
echo 'export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' >> $EXPORT_FILE