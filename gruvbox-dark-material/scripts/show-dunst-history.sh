#!/bin/bash

# Get the total number of notifications in the history
total_notifications=$(dunstctl count history)

# Loop through each notification in the history
for ((i = 0; i < $total_notifications; i++)); do
    # Pop the notification from the history
    dunstctl history-pop
done

dunstify -a "Dunstctl" -h string:x-dunst-stack-tag:ignore "All notifications in the history popped"
