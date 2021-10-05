#!/usr/bin/env bash

sxhkd &
picom -b
ibus exit
udiskie -t &
$HOME/.local/bin/monitor-config
$HOME/.local/bin/wl restore
