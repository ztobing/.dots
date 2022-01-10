#!/usr/bin/env zsh

ETH_IFACE="en5"
ICON=""
ETH_CONNECTED=
ETH_DISCONNECTED=
ETH_ACTIVE="$(ifconfig | pcregrep -M -o '^[^\t:]+(?=:([^\n]|\n\t)*status: active)' | grep $ETH_IFACE)"

if [ ${#ETH_ACTIVE} -eq 0 ]; then
    sketchybar --set $NAME width=0  \
                           icon=""  \
                           label=""
else
    ETH_IP=$(ifconfig en5 | grep 'inet ' | cut -d ' ' -f2)
    sketchybar --set $NAME icon=$ETH_CONNECTED  \
                           label=$ETH_IP        \
                           width=dynamic
fi

