#!/bin/bash

value=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '/Volume/ {print $5}' | tr -d '%')
echo $value