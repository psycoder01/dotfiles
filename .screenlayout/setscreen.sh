#!/usr/bin/sh

gpu_info=`glxinfo | grep "OpenGL renderer"`
count=`xrandr -q | grep ' connected' | wc -l`

if [ $count -lt 2 ]
then
	if [[ $gpu_info =~ "Intel" ]]
	then
		exec $HOME/.screenlayout/single_monitor_intel.sh
	else
		exec $HOME/.screenlayout/single_monitor_nvidia.sh
	fi
else
	
	if [[ $gpu_info =~ "Intel" ]]
	then
		exec $HOME/.screenlayout/multi_monitors_intel.sh
	else
		exec $HOME/.screenlayout/multi_monitors_nvidia.sh
	fi
fi

