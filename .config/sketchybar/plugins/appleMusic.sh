#!/usr/bin/env zsh

SHOW_ARTIST=1

isRunning=$(osascript -e 'if application "Music" is running then return 0')
if [ "$isRunning" == "" ]; then
  isRunning=0
  newLabel="Music"
else
  maxTitleLength=20
  newLabel="Music"
  songTitle=$(osascript -e "tell application \"Music\" to get name of current track")
  songArtist=$(osascript -e "tell application \"Music\" to get album artist of current track")

  if [ $(osascript -e 'tell application "Music" to get player state') == "stopped" ]; then
      newLabel="Music"
  else
      if [ "${#songTitle}" -gt "$maxTitleLength" ]; then
        songTitle="$(echo ${songTitle:0:19})…"
      fi
      if [ "${#songArtist}" -gt "$maxTitleLength" ]; then
        songArtist="$(echo ${songArtist:0:19})…"
          echo lmao
      fi
      if [ $SHOW_ARTIST -eq 0 ]; then
        newLabel="$songTitle"
      else
        newLabel="$songArtist - $songTitle"
      fi
  fi

  echo $newLabel | iconv -c
  # newLabel="$SHELL"

fi

sketchybar -m --set $NAME label="$newLabel"