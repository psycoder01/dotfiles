#!/usr/bin/sh

countOfConnectedMonitors=$(xrandr | grep " connected " | wc -l)

if [[ $countOfConnectedMonitors == 1 ]]; then
    bspc monitor -d I II III IV V VI VII VIII IX X
else
    bspc monitor eDP1 -d I IV V VI X 
    bspc monitor HDMI1 -d II III VII VIII IX
fi
