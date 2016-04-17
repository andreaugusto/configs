if [ "$1" = "deactivate" ]; then
    xrandr --output VGA-1 --off
    xrandr --output VGA-2 --off
else 
    xrandr --output VGA-1 --left-of VGA-2
    xrandr --output VGA-2 --above VGA-0
fi
