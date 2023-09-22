
if type sheldon &> /dev/null; then
    # Load plugins from sheldon.
    eval "$(sheldon source)"
fi

# Define aliases.
alias g=git
alias v=nvim
alias s=ssh
alias t=tmux
alias ta=tmux attach

alias vd="nvim \$(date '+%Y-%m-%d'.md)"

PROMPT='%F{green}%n@%m%u%f %~ $ '

case "${OSTYPE}" in
linux*)
    alias ls='ls --color'
    alias ll='ls -l --color'
    ;;
darwin*)
    alias ls='ls -G'
    alias ll='ls -lG'
esac

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

setopt auto_cd

zstyle ':completion:*' list-colors "${LS_COLORS}"
zstyle ':completion:*:default' menu select=2

HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
export LISTMAX=10000
setopt listpacked
setopt menu_complete
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt share_history
setopt append_history
setopt inc_append_history
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local

