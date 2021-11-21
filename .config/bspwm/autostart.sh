#!/usr/bin/env bash

xset led
sxhkd &
picom -b
ibus exit
udiskie -t &
$HOME/.local/bin/monitor-config
/usr/bin/wl restore
