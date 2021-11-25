#!/bin/sh

dex $HOME/.config/autostart/arcolinux-welcome-app.desktop &
picom -b
volumeicon &
ibus exit &
udiskie -t &
cbatticon -u 5 &
nm-applet &
xset led
wl restore
