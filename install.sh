#!/usr/bin/env bash

source apt.sh
source node.sh

# setup symlinks using stow
make

# Update settings
source ~/.zshrc
