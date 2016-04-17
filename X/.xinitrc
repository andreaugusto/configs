[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

~/gcom-monitors.sh
setxkbmap -model pc105 -variant intl
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &

export XCURSOR_PATH=""

~/wallpaper.sh

exec i3
