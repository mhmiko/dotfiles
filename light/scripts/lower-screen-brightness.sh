#!/bin/bash

brightnessctl s 2%-

current=$(brightnessctl g)
percent=$(( ($current * 100) / 255))

dunstify -a "Brightness Control" \
	-h string:x-dunst-stack-tag:ignore \
	-h int:value:${percent} \
	"Brightness: ${percent}%" --timeout=1000
