#!/bin/sh

audio="alsa-utils"
browsers="firefox-developer-edition chromium"
drivers="arandr flameshot lxappearance nitrogen picom redshift" 
filemanager="thuanr nnn"
textEditors="code mousepad nvim vim"


sudo pacman -Syyu
sudo pacman -S "$audio $browsers $drivers $filemanager $textEditors"

