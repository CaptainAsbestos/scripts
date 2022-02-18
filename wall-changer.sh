find $HOME/Images/wallpapers -name '*.jpg' -o -name '*.png' |\
    rofi -dmenu |\
    xargs feh --bg-fill
