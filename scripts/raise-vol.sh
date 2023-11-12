#!/bin/bash

current=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')
new=$((current + 5))

if [ $new -gt 100 ]; then
	new=100
fi

dunstify -a "Volume Control" -h string:x-dunst-stack-tag:ignore "Volume: ${new}%" --timeout=1000

pactl set-sink-volume @DEFAULT_SINK@ "${new}%"
