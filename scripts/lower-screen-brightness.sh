#!/bin/bash

brightnessctl s 10%-

current=$(brightnessctl g)
percent=$(( ($current * 100) / 255))

dunstify -a "Brightness Control" -h string:x-dunst-stack-tag:ignore "Brightness: ${percent}%" --timeout=1000
