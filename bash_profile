#!/usr/bin/env bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems
export PATH=$PATH:~/.gem/ruby/1.8/bin

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
  export BASH_IT_THEME='envy'
else
  export BASH_IT_THEME='pure'
fi

# expand aliases
shopt -s expand_aliases

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@bitbucket.org:jaxxstorm/'

# Set my editor and git editor
export EDITOR="/usr/bin/vim"
export GIT_EDITOR='/usr/bin/vim'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK


# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# if there's a local copy of git available, use it that
if [[ -x $HOME/bin/git ]]; then
  alias git=$HOME/bin/git
fi

# set the terminal prompt command
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'

# Load Bash It
source $BASH_IT/bash_it.sh

alias ls="ls -FG"
