#!/bin/bash

# # Ask for the administrator password upfront
# sudo -v

# # Keep-alive: update existing `sudo` time stamp until the script has finished
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo apt-get update
sudo apt-get install zsh 
sudo apt-get install zsh-autosuggestions
sudo apt-get install stow

rm -rf /home/$USER/.oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
