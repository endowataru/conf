#!/bin/bash
set -ux

# Upgrade homebrew
brew update
brew upgrade

# Update sheldon
sheldon lock --update

# Update packer plugins
nvim --headless "+Lazy! sync" +qa

# Update asdf
if type asdf &> /dev/null; then
    asdf plugin update --all
fi

# Update nodejs
if type npm &> /dev/null; then
    npm update -g
    npm upgrade -g
fi

# Update rust
if type rustup &> /dev/null; then
    rustup update
fi
if type cargo &> /dev/null; then
    cargo install-update -a
fi

