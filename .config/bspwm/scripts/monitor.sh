#!/usr/bin/sh

countOfConnectedMonitors=$(xrandr | grep " connected " | wc -l)
EXT_MONITOR=DP1

if [[ $countOfConnectedMonitors == 1 ]]; then
    bspc monitor eDP1 -d 1 2 3 4 5 6 7 8 9 0

    for desktop in $(bspc query -D -m $EXT_MONITOR); do
        bspc desktop $desktop --to-monitor eDP1
    done

    bspc desktop Desktop --remove > /dev/null

    bspc wm -O eDP1 $EXT_MONITOR 

    bspc monitor $EXT_MONITOR --remove > /dev/null

else
    bspc monitor eDP1 -d 1 4 5 6 0
    bspc monitor $EXT_MONITOR -d 2 3 7 8 9
		n_desktops=5

    for desktop in $(bspc query -D -m $EXT_MONITOR | sed "$n_desktops"q); do
        bspc desktop $desktop --to-monitor $EXT_MONITOR
    done

    bspc desktop Desktop --remove > /dev/null
    bspc wm --reorder-monitors eDP1 $EXT_MONITOR
fi
