export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/scripts:$PATH
export PATH=$HOME/bin:$PATH
alias ls="ls --color"
# set the terminal prompt command
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}\007"'

# If there's a local copy of git, use that
if [[ -x $HOME/bin/git ]]; then
    alias git=$HOME/bin/git
fi
source ~/.bash_profile

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Set up some aliases
alias gitclean_preview="git branch --merged | grep -v '\*'"
alias gitclean="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"

# Extraction
function extract()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1     ;;
      *.tar.gz)    tar xvzf $1     ;;
      *.bz2)       bunzip2 $1      ;;
      *.rar)       unrar x $1      ;;
      *.gz)        gunzip $1       ;;
      *.tar)       tar xvf $1      ;;
      *.tbz2)      tar xvjf $1     ;;
      *.tgz)       tar xvzf $1     ;;
      *.zip)       unzip $1        ;;
      *.Z)         uncompress $1   ;;
      *.7z)        7z x $1         ;;
      *)
      echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias ls='ls -G'
alias ll='ls -laG'
alias la='ls -aG'
alias ..='cd ..'
alias .='pwd;ls -G'
alias ~='cd ~'
alias l='ls -G'
alias gpull='git pull --rebase'
alias gcom='git commit -am'
alias gcam='git commit --amend -am'
alias gpush='git push'
alias gs='git status'
alias ggraph='git log --decorate --graph --all --pretty=format:"%C(yellow)%h %C(green)%ad%Cred%d %C(white)[%cn] %Cblue%s%Creset%b" --date=relative'
alias glog='git log'

alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
