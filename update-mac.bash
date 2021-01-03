#!/bin/bash
set -eux

# Upgrade homebrew
brew update
brew upgrade

# Upgrade dein
nvim -c "call dein#update()" -c q

