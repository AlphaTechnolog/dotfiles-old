#!/bin/sh

xset led
picom -b
volumeicon &
ibus exit
udiskie -t &
$HOME/.local/bin/monitor-config
/usr/local/bin/wl restore
