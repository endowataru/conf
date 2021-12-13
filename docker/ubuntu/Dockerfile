FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git curl build-essential libssl-dev pkg-config zsh tmux software-properties-common wget
RUN add-apt-repository ppa:neovim-ppa/stable && \
    DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y neovim

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Install diffr
RUN cargo install diffr
# Install sheldon
RUN cargo install sheldon

ARG CONF_DIR=/conf
COPY / $CONF_DIR
WORKDIR $CONF_DIR

# Install configurations
RUN ./install-zsh.bash
RUN ./install-sheldon.bash
RUN ./install-nvim.bash
RUN ./install-gitconfig.bash

# Install plugins in sheldon
RUN zsh -c "sheldon lock --update"

# Install plugins in neovim
RUN nvim --headless -c 'quitall'
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Install LSP in neovim
RUN nvim --headless -c "LspInstall --sync rust_analyzer jdtls" -c q

# Open zsh
WORKDIR /root
CMD ["zsh"]

