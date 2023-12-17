#!/bin/bash

current=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')
new=$((current - 5))

if [ $new -lt 0 ]; then
	new=0
fi

dunstify -a "Volume Control" \
	-h string:x-dunst-stack-tag:ignore \
	-h int:value:${new} \
	"Volume: ${new}%" --timeout=1000

pactl set-sink-volume @DEFAULT_SINK@ "${new}%"
