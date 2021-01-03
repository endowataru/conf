#!/bin/bash
for f in .tmux.conf;
do
    ln -si $(cd $(dirname $0); pwd)/$f ~/$f
done

