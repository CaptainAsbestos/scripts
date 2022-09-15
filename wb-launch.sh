#!/bin/bash

pkill waybar 

sleep 1

waybar &

waybar -c ~/.config/waybar/bottom-config -s ~/.config/waybar/bottom-style.css &
