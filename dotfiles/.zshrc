#
# User configuration sourced by interactive shells
#

# History Variables
export HISTTIMEFORMAT='%b %d %I:%M %p '
export HISTCONTROL=ignoreboth           # ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:ls:ls -thor"

export EDITOR="vim"

alias gs="git status"

alias cd..="cd .."

alias g++14="g++ -std=c++14 -Wall"

set -o vi
bindkey '^R' history-incremental-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
