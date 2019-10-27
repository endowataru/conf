#!/bin/bash
for f in .zshrc;
do
    ln -si `dirname $0`/$f ~/$f
done

