autoload -U compinit
compinit -i

# Paths
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools

# XTerm transparency
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

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

# Theme
source ./.zsh/theme/theme
