#!/bin/bash
# Find the Waybar process ID
WAYBAR_PID=$(pidof waybar)

# If Waybar is running, toggle it
if [ -n "$WAYBAR_PID" ]; then
    kill -USR1 $WAYBAR_PID
else
    # If not running, start it
    waybar &
fi
