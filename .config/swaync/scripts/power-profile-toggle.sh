#!/bin/sh

current=$(powerprofilesctl get)

if [ "$current" = "performance" ]; then
  powerprofilesctl set balanced
  notify-send "Power profile" "Balanced"
else
  powerprofilesctl set performance
  notify-send "Power profile" "Performance"
fi

