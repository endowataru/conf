#!/bin/bash
set -ux

# Upgrade homebrew
brew update
brew upgrade

# Update sheldon
sheldon lock --update

# Update packer plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

