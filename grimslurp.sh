#!/bin/bash

grim -c -g "$(slurp)" - | wl-copy && notify-send -u low "saved to clipboard"
