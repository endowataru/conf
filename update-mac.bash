#!/bin/bash
set -eux

# Upgrade homebrew
brew update
brew upgrade

# Update zinit
zsh -i -c "zinit self-update -q"
zsh -i -c "zinit update --all -q"

# Upgrade dein
nvim -c "call dein#update()" -c q

