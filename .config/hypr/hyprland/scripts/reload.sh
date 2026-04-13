#!/bin/bash

killall -9 waybar swaync cava &>/dev/null

waybar &>/dev/null &
swaync &>/dev/null &

hyprctl reload &>/dev/null

