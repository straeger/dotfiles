#!/bin/bash

. ./apt.sh
. ./node.sh

# setup symlinks using stow
make

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