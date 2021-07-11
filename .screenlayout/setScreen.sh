#!/usr/bin/sh

count=`xrandr -q | grep ' connected' | wc -l`

if [ $count -lt 2 ]
then
	exec $HOME/.screenlayout/single_monitor.sh
else

	exec $HOME/.screenlayout/multi_monitors.sh
fi
