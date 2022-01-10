#!/usr/bin/env zsh

PERCENTAGE=$(pmset -g batt | pcregrep -M -o '[0-9]+%')

sketchybar --set $NAME icon=               \
                       label=$PERCENTAGE