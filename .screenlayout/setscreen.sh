#!/bin/sh

# Checking the gpu being used
GPU=$(glxinfo | grep "OpenGL renderer")

if [[ "$GPU" =~ "Intel" ]]
then
    exec ~/.screenlayout/intel.sh
else
    exec ~/.screenlayout/nvidia.sh
fi
