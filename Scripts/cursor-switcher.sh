#!/bin/bash

CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/mocha/style.css"
COLORS="$HOME/.config/wofi/colors"

DIR="$HOME/zain/.local/share/icons"
CURSORS=($(ls ${DIR}))

wofi_command="wofi --show dmenu --prompt Choose... --conf ${CONFIG} --style ${STYLE} --color ${COLORS} --width=450 --height=600 --column=1 --define=matching=fuzzy --cache-file=/dev/null --hide-scroll --no-actions"

menu(){
    printf "1. Vimix\n"
    printf "2. Vimix-White\n"
    printf "3. Ina\n"
    printf "4. Furina"
}

main() {
    choice=$(menu | ${wofi_command} | cut -d. -f1)
    case $choice in
        1)
            hyprctl setcursor Vimix-cursors/ 40
            return
            ;;
        2) 
            hyprctl setcursor Vimix-white-cursors/ 40
            return
            ;;
        3)
            hyprctl setcursor Ninomae-Ina\'nis/ 60
            return
            ;;
        4)
            hyprctl setcursor Furina-v2/ 60
            return
            ;;
    esac
}

killall -f || main
