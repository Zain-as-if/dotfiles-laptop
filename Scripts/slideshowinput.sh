#!/bin/bash

# prompt user for input
read -rp "Enter path for wallpaper subdirectory: " SUBDIR

# read prompt for sleep
read -rp "Enter time between changing wallpapers in seconds: " SLEEP_DURATION

DIR="$HOME/Wallpapers/$SUBDIR"

if [ ! -d "$DIR" ]; then
    echo "Directory $DIR does not exist"
    exit 1
fi

# Get a list of all image files in the wallpapers directory
PICS=("$DIR"/*)

if [ ${#PICS[@]} -eq 0 ]; then
    echo "No images found in directory."
    exit 1
fi

# Start an infinite loop
while true; do
    # Check if the wallpapers array is empty
    if [ ${#PICS[@]} -eq 0 ]; then
        # If the array is empty, refill it with the image files
        PICS=("$DIR"/*)

        if [ ${#PICS[@]} -eq 0 ]; then
            echo "No image files found in specified directory."
            exit 1
        fi
    fi

    # Select a random wallpaper from the array
    IND=$(( RANDOM % ${#PICS[@]} ))
    SELECTED="${PICS[$IND]}"

    echo "Selceted Wallpaper: $SELECTED"

    swww img "$SELECTED" --transition-fps 144 --transition-type any --transition-duration 1.0

    # Delay before selecting the next wallpaper
    sleep "$SLEEP_DURATION"s
done
