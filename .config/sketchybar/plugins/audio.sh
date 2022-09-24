#!/usr/bin/env sh

CONNECTED_DEVICES=$(switchaudiosource -a -t output -f cli)
CURRENT_OUTPUT="$(switchaudiosource -c)"
SPEAKER_ICON=蓼
OTHER_ICON=
HEADPHONE_ICON=
HEADPHONE_REGEX="AirPods"
ICON=$SPEAKER_ICON
HEADPHONE_FOUND="$(echo $CURRENT_OUTPUT | grep $HEADPHONE_REGEX)"

if [ ${#HEADPHONE_FOUND} -gt 0 ]; then
    ICON=$HEADPHONE_ICON
    sketchybar -m --set $NAME label="$CURRENT_OUTPUT"    \
                           drawing=on                 \
                           icon=$ICON
elif [[ $CURRENT_OUTPUT != "MacBook Pro Speakers" ]]; then
    sketchybar -m --set $NAME label="$CURRENT_OUTPUT"    \
                        drawing=on                    \
                        icon=$OTHER_ICON
else
    sketchybar -m --set $NAME drawing=off
fi
