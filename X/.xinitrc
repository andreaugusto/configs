[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

~/gcom-monitors.sh
setxkbmap -model pc105 -variant intl

export XCURSOR_PATH=""

exec i3
