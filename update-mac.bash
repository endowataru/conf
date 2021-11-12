#!/bin/bash
set -ux

# Upgrade homebrew
brew update
brew upgrade

# Update sheldon
sheldon lock --update

# Update packer plugins
nvim -c "PackerUpdate" -c q

