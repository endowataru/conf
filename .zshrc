
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

# Load zplugin.
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit ice wait"0" blockf
zinit light zsh-users/zsh-completions

zinit ice wait"0" atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

zinit ice wait"0" atinit"zpcompinit; zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

# Define aliases.
alias g=git
alias v=nvim
alias s=ssh
alias t=tmux
alias ta=tmux attach

alias vd="nvim \$(date '+%Y%m%d'.markdown)"

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
export HISTSIZE=1000
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

