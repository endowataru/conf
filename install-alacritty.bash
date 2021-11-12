#!/bin/bash
set -ev
for f in .alacritty.yml; do
    ln -si $(cd $(dirname $0); pwd)/$f ~/$f
done

