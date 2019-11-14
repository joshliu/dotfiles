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

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
export EDITOR="vim"

alias gs="git status"

alias cd..="cd .."

alias g++14="g++ -std=c++14 -Wall"

# OPAM configuration
#. /Users/josh/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#CAML_LD_LIBRARY_PATH="/Users/josh/.opam/system/lib/stublibs:/usr/local/lib/ocaml/stublibs"; export CAML_LD_LIBRARY_PATH;
#OPAMUTF8MSGS="1"; export OPAMUTF8MSGS;
#MANPATH=":/Users/josh/.opam/system/man"; export MANPATH;
#PERL5LIB="/Users/josh/.opam/system/lib/perl5"; export PERL5LIB;
#OCAML_TOPLEVEL_PATH="/Users/josh/.opam/system/lib/toplevel"; export OCAML_TOPLEVEL_PATH;
#PATH="/Users/josh/.opam/system/bin:/Users/josh/.rvm/gems/ruby-2.3.1/bin:/Users/josh/.rvm/gems/ruby-2.3.1@global/bin:/Users/josh/.rvm/rubies/ruby-2.3.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/josh/.rvm/bin"; export PATH;

#GEM_PATH="/Users/josh/.rvm/gems/ruby-2.3.1:/Users/josh/.rvm/gems/ruby-2.3.1@global"
#GEM_HOME="/Users/josh/.rvm/gems/ruby-2.3.1"


#export GEM_PATH
#export GEM_HOME
# added by Miniconda3 installer
export PATH="/Users/josh/miniconda3/bin:$PATH"

set -o vi
bindkey '^R' history-incremental-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
