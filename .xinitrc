#!/bin/sh

xwallpaper --center /home/kk/bin/wallpapers/cabin-rain.jpg
slstatus &
dwm-redshift.sh &
xmodmap .Xmodmap &
picom &

    while true; do
      dwm  >/dev/null 2>&1 
    done
