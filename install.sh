#!/bin/bash

. ./apt.sh
. ./node.sh


# setup symlinks using stow

ZSH=$HOME/.oh-my-zsh
rm -rf $ZSH/plugins/zsh-autosuggestions
rm -rf $ZSH/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting

#java sdk man 
curl -s "https://get.sdkman.io" | bash

# Update settings
ZSH=$HOME//.oh-my-zsh

. ~/.zshrc
find $ZSH -name "*.zsh" | xargs dos2unix > /dev/null 2>&1


curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein 

sudo chsh -s $(which zsh)

#install k8s plugin manager krew
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)