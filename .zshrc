
# Load zplugin.
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin ice wait"0" blockf
zplugin light zsh-users/zsh-completions

zplugin ice wait"0" atload"_zsh_autosuggest_start"
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait"0" atinit"zpcompinit; zpcdreplay"
zplugin light zdharma/fast-syntax-highlighting

# Define aliases.
alias g=git
alias v=nvim
alias s=ssh

PROMPT='%F{green}%n@%m%u%f %~ $ '

alias ls="ls -G"
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

setopt auto_cd
setopt share_history

[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local

