#!/bin/bash
#
if pgrep -x "waybar" > /dev/null
then
    echo "Running"
    killall -SIGUSR1 waybar
else
    echo "Not running, will run now"
    waybar &
fi
