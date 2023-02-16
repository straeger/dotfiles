#!/bin/bash

. ./apt.sh
. ./node.sh

# setup symlinks using stow
make

# Update settings
. ~/.zshrc
