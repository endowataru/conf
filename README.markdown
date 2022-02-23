
# My configuration files for shell tools

[![Publish Docker image](https://github.com/endowataru/conf/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/endowataru/conf/actions/workflows/docker-image.yml)

This repository is a collection of my configuration files for shell tools.
They are supposed to mostly work both on macOS and Linux.

![Example](example.png)

## Docker image

You can try the environment configured by this repository
with the public Docker images I created:
```bash
docker run -it wendo/ubuntu-shell:main
```
To mount the current directory from the container,
run the following command:
```bash
docker run -v $(pwd):/mnt -w /mnt -it wendo/ubuntu-shell:main
```

## Tools

- neovim
    - Type `v[Enter]` in the shell.
    - [packer](https://github.com/wbthomason/packer.nvim) as a package manager.
    - The configurations are located at `nvim/`. They are written in Lua.
- zsh
    - [sheldon](https://github.com/rossmacarthur/sheldon) as a package manager.
    - See `.zshrc` to check its configuration.
- git
    - Type `g[Enter]` in the shell.
    - See `.gitconfig`.
- tmux
    - Type `t[Enter]` in the shell.
    - See `.gitconfig`.
- homebrew
    - `Brewfile`s are located at `brew/`.

### Neovim key mappings

- `[Space]e` : Open the filer (nvim-tree).
- `[Space]t` : Open the terminal.
- `<Shift-Arrow>` : Resize the current window.
- `<Ctrl-S>` : Save the current buffer.

