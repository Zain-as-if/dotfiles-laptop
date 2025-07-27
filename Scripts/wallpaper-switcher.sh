#!/bin/bash

## Files
CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/mocha/style.css"
COLORS="$HOME/.config/wofi/colors"


DIR="$HOME/Wallpapers/normal"
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

## Wofi Command
wofi_command="wofi --show dmenu \
			--prompt Choose...
			--conf ${CONFIG} --style ${STYLE} --color ${COLORS} \
            --width=450 --height=600 --columns=2 \
			--cache-file=/dev/null \
			--hide-scroll --no-actions \
			--define=matching=fuzzy"

#wofi_command= "wofi --show dmenu --conf $HOME/.config/wofi/config --style $HOME/.config/wofi/mocha/style.css"


menu(){
printf "1. original\n" 
printf "2. baal\n"
printf "3. bridge\n"
printf "4. dororo\n"
printf "5. train\n"
printf "6. gin\n"
printf "7. island\n"
printf "8. your name\n"
printf "9. senjo\n"
printf "10. yotsugiyay\n"
printf "11. chino\n"
printf "12. chinococoa\n"
printf "13. field\n"
printf "14. jelly\n"
printf "15. tenkinoko\n"
printf "16. yotsugi\n"
printf "17. random\n"
}

swww query || swww-daemon

main() {
choice=$(menu | ${wofi_command} | cut -d. -f1)
case $choice in
1)
    swww img ${DIR}/wallpaper.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/wallpaper.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
2)
    swww img ${DIR}/baal.png --transition-fps 144 --transition-type any --transition-duration 2.5
    cp ${DIR}/baal.png $HOME/Wallpapers/screenshot.png 
    return
    ;;
3)
    swww img ${DIR}/bridge.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/bridge.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
4)
    swww img ${DIR}/dororo.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/dororo.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
5)
    swww img ${DIR}/train.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/train.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
6)
    swww img ${DIR}/gin.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/gin.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
7)
    swww img ${DIR}/island.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/island.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
8)
    swww img ${DIR}/yourname.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/yourname.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
9)
    swww img ${DIR}/senjo.png --transition-fps 144 --transition-type any --transition-duration 2.5
    cp ${DIR}/senjo.png $HOME/Wallpapers/screenshot.png
    return
    ;;
10)
    swww img ${DIR}/yotsugiyay.png --transition-fps 144 --transition-type any --transition-duration 2.5
    cp ${DIR}/yotsugiyay.png $HOME/Wallpapers/screenshot.png
    return
    ;;
11)
    swww img ${DIR}/chino.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/chino.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
12)
    swww img ${DIR}/chinococoa.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/chinococoa.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
13)
    swww img ${DIR}/field.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/field.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
14)
    swww img ${DIR}/jelly.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/jelly.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
15)
    swww img ${DIR}/tenkinoko.png --transition-fps 144 --transition-type any --transition-duration 2.5
    cp ${DIR}/tenkinoko.png $HOME/Wallpapers/screenshot.png
    return
    ;;
16)
    swww img ${DIR}/yotsugi.jpg --transition-fps 144 --transition-type any --transition-duration 2.5
    magick ${DIR}/yotsugi.jpg $HOME/Wallpapers/screenshot.png
    return
    ;;
17)
    swww img ${DIR}/${RANDOMPICS} --transition-fps 144 --transition-type any --transition-duration 2.5
    if [[ "${DIR}/${RANDOMPICS}" =~ \.png$ ]]; then
        cp ${DIR}/${RANDOMPICS} $HOME/Wallpapers/screenshot.png
    elif [[ "${DIR}/${RANDOMPICS}" =~ \.jpg$ ]] || [[ "${DIR}/${RANDOMPICS}" =~ \.jpeg$ ]]; then
        magick ${DIR}/${RANDOMPICS} $HOME/Wallpapers/screenshot.png
    fi
    return
    ;;
esac
}

killall -f || main
