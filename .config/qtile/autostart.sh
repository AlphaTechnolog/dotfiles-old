#!/bin/sh


picom -b
volumeicon &
$HOME/.local/bin/monitor-config
$HOME/.local/bin/wl restore
ibus exit
cbatticon -u 5 &
udiskie -t &
nm-applet &
