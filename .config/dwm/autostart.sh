#!/bin/bash

xset led
dwmblocks &
picom -b
ibus exit
volumeicon &
udiskie -t &
$HOME/.local/bin/monitor-config
/usr/bin/wl restore
