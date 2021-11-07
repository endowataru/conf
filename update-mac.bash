#!/bin/bash
set -ux

# Upgrade homebrew
brew update
brew upgrade

# Update sheldon
sheldon lock --update

# Upgrade dein
nvim -c "call dein#update()" -c q

