# Path to your oh-my-zsh installation.
export ZSH=/Users/kfan/.oh-my-zsh

POWERLEVEL9K_MODE='awesome-patched'
TERM=xterm-256color
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$ZSH/customizations

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git battery brew zsh-syntax-highlighting)

# User configuration

export PATH="/Users/kfan/bin:/Users/kfan/scripts:/Users/kfan/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/kfan/.gem/ruby/2.0.0/bin:/Users/kfan/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# The Fuck
eval "$(thefuck --alias fuck)"

alias cleardb='echo '"'"'drop schema if exists frontdoor; create schema frontdoor;'"'"' | mysqldb'
alias ls='ls -G'
alias ll='ls -laG'
alias la='ls -aG'
alias frontdoor='cd ~/git/frontdoor'
alias fd='cd ~/git/frontdoor'
alias javaclient='cd ~/git/frontdoorjavaclient'
alias fdclient='cd ~/git/frontdoorjavaclient'
alias fdtools='cd ~/git/frontdoor-tools'
alias fdt='cd ~/git/frontdoor-tools'
alias ..='cd ..'
alias .='pwd;ls -G'
alias ~='cd ~'
alias l='ls -G'
alias gpull='git pull --rebase'
alias gcom='git commit -am'
alias gcam='git commit --amend -am'
alias gpush='git push'
alias gs='git status'
alias ggraph='git log --decorate --graph --all --pretty=format:"%C(yellow)%h %C(green)%ad %C(dim white)[%cn] %Creset%Cblue%s%Creset%b%Cred%d" --date=short'
alias glog='git log'
alias gfp='git fetch && git pull --rebase'

alias mysqldb='/Applications/MySQLWorkbench.app/Contents/MacOS/mysql -h localhost -u root'
alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'

DEFAULT_USER="kfan"

prompt_zsh_spotify () {
  state=`osascript -e 'tell application "Spotify" to player state as string'`;
  if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string'`;

    echo -n "$artist - $track";
  fi
}

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('time' 'zsh_spotify')
POWERLEVEL9K_RVM_BACKGROUND="red"
POWERLEVEL9K_RVM_FOREGROUND="black"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=8
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_BATTERY_CHARGED="green"
POWERLEVEL9K_BATTERY_CHARGING="yellow"
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=15
POWERLEVEL9K_BATTERY_LOW_COLOR="red"
POWERLEVEL9K_SHORTEN_STRATEGY=""
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
