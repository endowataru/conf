#!/bin/bash
for f in .zshrc;
do
    ln -si $(cd $(dirname $0); pwd)/$f ~/$f
done

