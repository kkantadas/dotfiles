#!/bin/bash


if pgrep -x "gammastep" > /dev/null
then
    echo "Running"
else
  gammastep -l 32.4067:88.3686 -t 5700:3900 &
    echo "gammastep is up now !!"
fi
