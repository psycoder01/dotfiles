#!/bin/sh

audio="alsa-utils base-devel pavucontrol pulseaudio"
browsers="firefox-developer-edition chromium"
dev="intellij-idea-community-edition"
drivers="arandr blueman bspwm copyq dunst feh flameshot git lxappearance network-manager-applet nitrogen picom polybar redshift rofi sxhkd the_silver_searcher udisks2 unzip" 
filemanager="matcha-gtk-theme nnn thunar"
image="gimp sxiv"
terminalEmulators="alacritty rxvt-unicode"
textEditors="mousepad nvim vim"
video="obs-studio shotcut xf86-video-intel v4l-utils"
xorg="xorg xorg-init xorg-xbacklight"

sudo pacman -Syyu
sudo pacman -S "$audio $browsers $drivers $filemanager $image $terminalEmulators $textEditors"
