# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="nicoulaj"
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
plugins=(git git-remote-branch git-extras django vi-mode python)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/usr/local/virtuoso-opensource/bin/

# Mine

bindkey "^R" history-incremental-search-backward

# XTerm transparency
# [ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

# History file
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

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

if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PYTHONDIR=/Library/Frameworks/Python.framework/Versions/2.7/bin
export PYTHONPATH=$PYTHONPATH:/Library/Frameworks/Python.framework/Versions/2.7/bin
export PYTHONPATH=$PYTHONPATH:/Users/mohsenjadidi/Library/Enthought/Canopy_64bit/User/lib/python2.7/site-packages
export PYTHONPATH=$PYTHONPATH:/Applications/Canopy.app/appdata/canopy-1.0.1.1189.macosx-x86_64/Canopy.app/Contents/lib/python2.7/site-packages

export LC_ALL=en_US.UTF-8 
export MYSQL_HOST=127.0.0.1
