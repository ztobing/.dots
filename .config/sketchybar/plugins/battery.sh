#!/usr/bin/env zsh

BATT_100=􀛨
BATT_75=􀺸
BATT_50=􀺶
BATT_25=􀛩
BATT_0=􀛪
BATT_CHARGING=􀢋

CHARGE=$(pmset -g batt | pcregrep -M -o '[0-9]+%')
CHARGE_RAW=${CHARGE: : -1}
CHARGING=$(pmset -g batt | pcregrep -M -o 'AC Power')

# Set Icon
if [ ${#CHARGING} -gt 0 ]; then
    sketchybar --set $NAME  icon=$BATT_CHARGING
elif [ $CHARGE_RAW -gt 75 ]; then
    sketchybar --set $NAME  icon=$BATT_100
elif [ $CHARGE_RAW -gt 50 ]; then
    sketchybar --set $NAME  icon=$BATT_75
elif [ $CHARGE_RAW -gt 25 ]; then
    sketchybar --set $NAME  icon=$BATT_50
elif [ $CHARGE_RAW -gt 10 ]; then
    sketchybar --set $NAME  icon=$BATT_25
elif [ $CHARGE_RAW -gt 0 ]; then
    sketchybar --set $NAME  icon=$BATT_0
fi

sketchybar --set $NAME label=$CHARGE