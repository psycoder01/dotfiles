#!/bin/sh

audio="alsa-utils base-devel pavucontrol pipewire pipewire-jack pipewire-als pipewire-pulse"
browsers="firefox-developer-edition chromium"
dev="intellij-idea-community-edition code mill nodejs npm yarn"
drivers="arandr blueman bspwm copyq docker dunst feh flameshot fuse git gvfs lxappearance networkmanager network-manager-applet nitrogen noto-fonts-cjk ntfs-3g papirus-icon-theme picom polybar redshift rofi sxhkd the_silver_searcher thunar-volman tlp udisks2 unzip w3m zsh" 
filemanager="nnn thunar ranger"
image="gimp sxiv"
terminalEmulators="alacritty rxvt-unicode"
textEditors="mousepad neovim vim zed"
video="obs-studio shotcut xf86-video-intel v4l-utils"
xorg="xorg xorg-init xorg-xbacklight"

sudo pacman -Syyu
sudo pacman -S $audio $browsers $drivers $filemanager $image $terminalEmulators $textEditors

## install AUR helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

## AUR packages
yayPackages="coursier discord i3lock-color postman-bin matcha-gtk-theme optimus-manager optimus-manager-qt papirus-folder-git scala-dotty scala3 teams spotify"
yay -S $yayPackages

## Enable / Start units
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
sudo systemctl enable tlp
sudo systemctl start tlp
