#!/bin/sh

picom -b
volumeicon &
ibus exit
udiskie -t &
$HOME/.local/bin/monitor-config
$HOME/.local/bin/wl restore
