#!/bin/bash
set -ev
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
for f in .gitconfig; do
    ln -si $SCRIPTPATH/$f ~/$f
done
