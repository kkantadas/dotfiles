#!/bin/bash


# Check if redshift is already running

if ! pgrep -x "redshift" > /dev/null; then

    redshift &

fi
