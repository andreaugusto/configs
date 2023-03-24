xrandr --output DP-1 --off
xrandr --output DP-3 --off
xrandr --output DP-1 --above eDP-1 --mode 2560x1080
xrandr --output DP-1 --above eDP-1 --mode 2560x1440
xrandr --output DP-3 --above eDP-1 --mode 2560x1080
xrandr --output DP-3 --above eDP-1 --mode 2560x1440
./.config/polybar/launch.sh
feh --bg-max --no-fehbg --randomize ~/Documents/wallpaper/*
