#!/usr/bin/env zsh

SSID="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | sed -e "s/^  *SSID: //p" -e d)"
WIFI_CONNECTED=直
WIFI_DISCONNECTED=睊

if [ ${#SSID} -eq 0 ]; then
    sketchybar --set $NAME icon=$WIFI_DISCONNECTED
else
    sketchybar --set $NAME icon=$WIFI_CONNECTED \
                           label=$SSID
fi