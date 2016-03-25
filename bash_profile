#!/usr/bin/env bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add some local path dirs
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/scripts:$PATH
export PATH=$HOME/bin:$PATH

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
os=$(uname)
if [[ $os == 'Darwin' ]]; then
  export BASH_IT_THEME='pure'
else
  export BASH_IT_THEME='pure'
fi

# expand aliases
shopt -s expand_aliases

# Set my editor and git editor
export EDITOR="vim"
export GIT_EDITOR='vim'

# Don't check mail when opening terminal.
unset MAILCHECK

# if there's a local copy of git available, use it that
if [[ -x $HOME/bin/git ]]; then
  alias git=$HOME/bin/git
fi

# set the terminal prompt command
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'

# Load Bash It
source $BASH_IT/bash_it.sh

### Aliases
alias ls="ls -FG"
alias gitclean_preview="git branch --merged | grep -v '\*'"
alias gitclean="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"
