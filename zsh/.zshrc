# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="robbyrussell"
#ZSH_THEME="arrow"
#ZSH_THEME="nicoulaj"
#ZSH_THEME="afowler"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="clean"
#ZSH_THEME="cloud"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras django vi-mode python history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/usr/local/virtuoso-opensource/bin/

# Mine

bindkey "^R" history-incremental-search-backward

# XTerm transparency
# [ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

# History file
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000

# Defaults
export BROWSER="chromium"
export EDITOR="vim"
export PAGER="vimpager"

# ArchLinux
alias spacman="sudo pacman"
zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select

# Others
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias lah='ls -lah'
alias la='ls -A'

alias runctags='1> /dev/null 2>&1 /usr/local/bin/ctags -R --python-kinds=-i -f ./tags `python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"` && /usr/local/bin/ctags -R --python-kinds=-i -f tags --append'
alias mysql='mysql --auto-rehash'

alias ssh='TERM=xterm ssh'

function my_ip {
    ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'
}

# VI status
#function zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/C}/(main|viins)/I}"
#    zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select

# Setting up the VirtualEnv
export WORKON_HOME=$HOME/.virtualenvs

if [[ -r /usr/bin/virtualenvwrapper.sh ]]; then
    source /usr/bin/virtualenvwrapper.sh > /dev/null 2>&1
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

PATH=$PATH:$HOME/.rvm/bin:/home/go/bin # Add RVM to PATH for scripting

export TERMINAL=xcfe4-terminal
export PYTHONPATH=$PYTHONPATH:/Applications/Canopy.app/appdata/canopy-1.0.1.1189.macosx-x86_64/Canopy.app/Contents/lib/python2.7/site-packages
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip-downloads

export LC_ALL=en_US.UTF-8 
export MYSQL_HOST=127.0.0.1

export SHELL='/bin/zsh'
export JAVA_HOME='/usr'
export GOPATH='/home/go'

autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# NVM
source /usr/share/nvm/init-nvm.sh
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
