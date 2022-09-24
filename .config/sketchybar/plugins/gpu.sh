#!/usr/bin/env zsh

DEDICATED_ICON=a

IS_INTEGRATED=$(system_profiler SPDisplaysDataType | grep -A 6 Intel | grep Displays)

# Set Icon
if [ "$IS_INTEGRATED" = "" ]; then
    sketchybar --set $NAME drawing=on
else
    sketchybar --set $NAME drawing=off
fi