#!/bin/bash
set -ev
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p ~/.config/nvim || true
for f in init.lua after lua; do
    ln -si $SCRIPTPATH/nvim/$f ~/.config/nvim/$f
done

