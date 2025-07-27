#!/bin/bash

DIR=$HOME/Wallpapers/normal
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
    pkill swaybg
fi

swww query || swww init

swww img ${DIR}/${RANDOMPICS} --transition-fps 144 --transition-type any --transition-duration 3
