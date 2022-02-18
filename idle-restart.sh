 swayidle -w \
         timeout 300 'custom-swaylock.sh' \
         timeout 600 'swaymsg "output * dpms off"' \
              resume 'swaymsg "output * dpms on"' \
         before-sleep 'custom-swaylock.sh' 

