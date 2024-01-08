#!/bin/zsh
xrandr --output HDMI-1 --mode 2560x1440 --above eDP-1 && xrandr --output DP-1 --mode 2560x1080 --left-of HDMI-1 && ./.config/polybar/launch.sh
feh --bg-max --no-fehbg --randomize ~/Documents/wallpaper/*
