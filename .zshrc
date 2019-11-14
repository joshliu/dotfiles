#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# History Variables
export HISTTIMEFORMAT='%b %d %I:%M %p '
export HISTCONTROL=ignoreboth           # ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:ls:ls -thor"

export EDITOR="vim"

alias gs="git status"

alias cd..="cd .."

alias g++14="g++ -std=c++14 -Wall"

# added by Miniconda3 installer
export PATH="/Users/josh/miniconda3/bin:$PATH"

set -o vi
bindkey '^R' history-incremental-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
