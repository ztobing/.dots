#!/usr/bin/env zsh

CONNECTED_DEVICES=$(switchaudiosource -a -t output -f cli)
CURRENT_OUTPUT="$(switchaudiosource -c)"

SPEAKER_ICON=蓼
HEADPHONE_ICON=
HEADPHONE_REGEX="AirPods"

ICON=$SPEAKER_ICON
HEADPHONE_FOUND="$(echo $CURRENT_OUTPUT | grep $HEADPHONE_REGEX)"

if [ ${#HEADPHONE_FOUND} -gt 0 ]; then
    ICON=$HEADPHONE_ICON
elif [[ $CURRENT_OUTPUT == "MacBook Pro Speakers" ]]; then
    CURRENT_OUTPUT="Speakers"
fi

sketchybar --set $NAME label="$CURRENT_OUTPUT"    \
                       icon=$ICON
