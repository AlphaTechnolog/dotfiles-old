#!/bin/sh

xset led
picom -b
volumeicon &
ibus exit
udiskie -t &
$HOME/.local/bin/monitor-config
/usr/bin/wl restore
