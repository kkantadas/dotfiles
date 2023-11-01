#!/bin/bash
#
#if pgrep -x "waybar" > /dev/null
if pgrep -x "gBar" > /dev/null
then
    echo "Running"
    #killall -SIGUSR1 i3bar-river
    pkill -9  gBar
else
    echo "Not running, will run now"
#    waybar &
gBar bar 0 &
fi
