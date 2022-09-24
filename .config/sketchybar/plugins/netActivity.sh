#!/usr/bin/env zsh

IFACE="$1"

UPDOWN=$(ifstat -i "$IFACE" -b 0.1 1 | tail -n1)
DOWN=$(echo $UPDOWN | awk "{ print \$1 }" | cut -f1 -d ".")
UP=$(echo $UPDOWN | awk "{ print \$2 }" | cut -f1 -d ".")

DOWN_FORMAT=""
if [ "$DOWN" -gt "999" ]; then
  DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%.03d Mbps", $1 / 1000}')
else
  DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%.03d kbps", $1}')
fi

UP_FORMAT=""
if [ "$UP" -gt "999" ]; then
  UP_FORMAT=$(echo $UP | awk '{ printf "%.03d Mbps", $1 / 1000}')
else
  UP_FORMAT=$(echo $UP | awk '{ printf "%.03d kbps", $1}')
fi

sketchybar -m --set "$NAME.up" label="$UP_FORMAT"
sketchybar -m --set "$NAME.down" label="$DOWN_FORMAT"
