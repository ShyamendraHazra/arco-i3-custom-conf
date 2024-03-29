#!/bin/bash
# Increase brightness
xrandr --output eDP-1 --brightness $(awk '{print $1 + 0.1}' <<< "$(xrandr --verbose --current | grep -Po '(?<=Brightness: )\S+')")
