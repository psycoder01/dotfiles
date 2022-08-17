#!/bin/sh

cat configs/.xinitrc >> ~/.xinitrc
cat configs/30-touchpad.conf >> /etc/X11/xorg.conf.d/30-touchpad.conf
cat configs/tlp.conf >> /etc/tlp.conf

cp .local .screenlayout .ssh .urxvt .p10k.zsh .tmux.conf .Xresources .zshrc ~/
