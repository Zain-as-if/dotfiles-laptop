#!/bin/bash

# Set the path to the wallpapers directory
DIR="$HOME/Wallpapers/nsfwanime"


if [ ! -d "$DIR" ] || [ -z "$(ls -A "$DIR")" ]; then
    echo "Error: Directory does not exist or is empty"
    exit 1
fi

# Get a list of all image files in the wallpapers directory
PICS=("$DIR"/*)

# Start an infinite loop
while true; do
    # Check if the wallpapers array is empty
    if [ ${#PICS[@]} -eq 0 ]; then
        # If the array is empty, refill it with the image files
        PICS=("$DIR"/*)
    fi

    # Select a random wallpaper from the array
    IND=$(( RANDOM % ${#PICS[@]} ))
    SELECTED="${PICS[$IND]}"

    # Update the wallpaper using the swww img command
    swww img "$SELECTED" --transition-fps 144 --transition-type any --transition-duration 1.0

    # Remove the selected wallpaper from the array
    unset "PICS[$IND]"

    # Delay before selecting the next wallpaper
    sleep 10s
done
