#!/bin/bash
set -ex
CONF_DIR=~/.config/sheldon
mkdir $CONF_DIR || true
for f in plugins.toml; do
    ln -si $(cd $(dirname $0); pwd)/sheldon/$f $CONF_DIR/$f
done

