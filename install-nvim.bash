#!/bin/bash
set -ev
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p ~/.config/nvim || true
for f in init.vim dein.toml; do
    ln -si $SCRIPTPATH/nvim/$f ~/.config/nvim/$f
done

