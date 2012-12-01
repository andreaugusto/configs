xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
dualView
xfce4-power-manager
~/.wallpapers/wallpaper_change.py &
DEFAULT_SESSION=awesome
case $1 in
    awesome|wmii|xmonad) exec $1 ;;
    *) exec $DEFAULT_SESSION ;;
esac

