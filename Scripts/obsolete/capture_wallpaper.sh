#!/bin/bash

hyprctl dispatch workspace 9

agsv1 -q

sleep 1s 
# Take a screenshot using grim
grim -o DP-1 ~/Wallpapers/screenshot.png

agsv1 &

hyprctl dispatch workspace 1
