#!/bin/bash

dwmblocks &
picom -b
ibus exit
volumeicon &
udiskie -t &
$HOME/.local/bin/monitor-config
/usr/local/bin/wl restore
