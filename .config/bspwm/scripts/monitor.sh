#!/usr/bin/sh

countOfConnectedMonitors=$(bspc query --monitors | wc -l)

if [[ $countOfConnectedMonitors == 1 ]]; then
    echo "$countOfConnectedMonitors"
    exec bspc monitor -d I II III IV V VI VII VIII IX X
else
    echo "$countOfConnectedMonitors"
    exec bspc monitor eDP1 -d I IV V VI X 
    exec bspc monitor HDMI1 -d II III VII VIII IX
fi
