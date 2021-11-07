#!/bin/bash
set -ex
mkdir ~/.sheldon || true
for f in plugins.toml; do
    ln -si $(cd $(dirname $0); pwd)/sheldon/$f ~/.sheldon/$f
done

