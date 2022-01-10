#!/usr/bin/env sh

APP_NAME=$(yabai -m query --windows --window | jq '.app' | sed -E 's/^"(.*)"$/\1/')

if [ "$APP_NAME" = "" ]; then
  sketchybar --set $NAME label="Finder"
else
  if [ "${#APP_NAME}" -gt 21 ]; then
    APP_NAME="$(echo ${APP_NAME:0:21})…"
  fi
  sketchybar --set $NAME label="$APP_NAME"
fi
