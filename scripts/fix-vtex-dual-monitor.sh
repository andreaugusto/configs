#!/bin/zsh
xrandr --output DP-1 --mode 2560x1440 --above eDP-1 && xrandr --output DP-3 --mode 2560x1440 --rotate left --right-of DP-1 && ~/.config/polybar/launch.sh && \
    feh --bg-max --no-fehbg --randomize ~/Documents/wallpaper/*
