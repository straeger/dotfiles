#!/bin/bash

sudo apt-get update
sudo apt-get install zsh zsh-autosuggestions stow dos2unix rubygems tmux tmuxinator fortune cowsay


sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
