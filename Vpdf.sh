#!/bin/bash

DIR="$HOME/Vedapdf"

while true; do
    choice=$( (
        [ "$DIR" != "$HOME/Vedapdf" ] && echo "../"

        find "$DIR" -maxdepth 1 -type d ! -path "$DIR" \
            -printf "%f/\n" | sort

        find "$DIR" -maxdepth 1 -type f -iname "*.pdf" \
            -printf "%f\n" | sort
    ) | dmenu \
        -i \
        -l 20 \
        -fn "monospace:size=16:style=bold" \
        -p "$(basename "$DIR")" )

    [ -z "$choice" ] && exit

    if [ "$choice" = "../" ]; then
        DIR=$(dirname "$DIR")

    elif [[ "$choice" == */ ]]; then
        DIR="$DIR/${choice%/}"

    else
        zathura "$DIR/$choice" &
        exit
    fi
done
