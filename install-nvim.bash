#!/bin/bash
set -ev
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p ~/.config/nvim || true
for f in init.lua lua; do
    ln -si $SCRIPTPATH/nvim/$f ~/.config/nvim/$f
done

