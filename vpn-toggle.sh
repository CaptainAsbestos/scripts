#!/bin/bash

STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = 'Connected' ]
then
        notify-send -u low -t 1500 "vpn: disconnecting..." && 
        nordvpn d
else
        if [ "$STATUS" = 'Disconnected' ]
        then
                notify-send -u low -t 1500 "vpn: connecting default..." &&
                nordvpn c
        fi
fi
