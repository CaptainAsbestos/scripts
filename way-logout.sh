#!/usr/bin/env bash

question=$(echo "lock screen|kill Wayland|logout|reboot|shutdown" | rofi -sep "|" \
    -dmenu -i -p 'System' "" -width 27 -hide-scrollbar \
    -eh 1 -line-padding 4 -font "Hack 16" -position 2 -padding 20 -lines 5 -yoffset 100 -color-enabled)

case $question in
    *"lock screen")
        custom-swaylock.sh
        ;;
    *"kill Wayland")
        swaymsg exit
        ;;
    *logout)
        kill -9 -1
        ;;
    *reboot)
        systemctl reboot
        ;;
    *shutdown)
        systemctl poweroff
        ;;
    *)
        exit 0  # do nothing on wrong response
        ;;
esac

