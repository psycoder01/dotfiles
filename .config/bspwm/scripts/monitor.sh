#!/usr/bin/env sh

monitors=$(xrandr --query | grep ' connected' | awk '{ print $1 }')
monitor_array=($monitors)
count=${#monitor_array[@]}

main=${monitor_array[0]}
ext=${monitor_array[1]}

if [ "$count" -eq 1 ]; then
    bspc monitor "$main" -d 1 2 3 4 5 6 7 8 9 0

    for desktop in $(bspc query -D -m "$ext"); do
        bspc desktop "$desktop" --to-monitor "$main"
    done

    bspc desktop Desktop --remove > /dev/null

    bspc wm -O "$main" "$ext"

    bspc monitor "$ext" --remove > /dev/null

else
    bspc monitor "$main" -d 1 4 5 6 0
    bspc monitor "$ext" -d 2 3 7 8 9
    n_desktops=5

    for desktop in $(bspc query -D -m "$ext" | sed -n "1,${n_desktops}p"); do
        bspc desktop "$desktop" --to-monitor "$ext"
    done

    bspc desktop Desktop --remove > /dev/null
    bspc wm --reorder-monitors "$main" "$ext"
fi
