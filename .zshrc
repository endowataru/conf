alias g=git
alias v=nvim
alias s=ssh

PROMPT='%F{green}%n@%m%u%f %~ $ '

# Load zplugin.
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-syntax-highlighting

