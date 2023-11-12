#!/bin/bash

dunstify -a "Dunstctl" -h string:x-dunst-stack-tag:ignore "Clearing dunst history..." --timeout=1000
sleep 1

dunstctl close-all
dunstctl history-clear
