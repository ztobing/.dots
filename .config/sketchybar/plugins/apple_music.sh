#!/usr/bin/env sh

SHOW_ARTIST=1

isRunning=$(osascript -e 'if application "Music" is running then return 0')
if [ "$isRunning" == "" ]; then
  isRunning=0
  sketchybar -m --set "$NAME" drawing=off
  # newLabel="Music"
else
  maxTitleLength=20
  newLabel="Music"
  songTitle=$(osascript -e "tell application \"Music\" to get name of current track")
  songArtist=$(osascript -e "tell application \"Music\" to get artist of current track")
  audioFormat=$(osascript -e "tell application \"System Events\"
                                tell process \"Music\"
                                  set X to the description of (button 1 of group 1 of group 1 of group 1 of splitter group 1 of window \"Music\")
                                end tell
                              end tell"
              )

  if [ "$songArtist" = "" ]; then 
    songArtist=songArtist=$(osascript -e "tell application \"Music\" to get album artist of current track")
  fi

  if [ "$audioFormat" = "" ]; then
      audioFormat=$(osascript -e "tell application \"System Events\"
                                tell process \"Music\"
                                  set X to the description of (button 1 of group 1 of group 1 of group 2 of splitter group 1 of window \"Music\")
                                end tell
                              end tell"
              )
  fi

    if [ "$audioFormat" = "" ]; then
      audioFormat=$(osascript -e "tell application \"System Events\"
                                tell process \"Music\"
                                  set X to the description of (button 1 of group 1 of group 1 of group 3 of splitter group 1 of window \"Music\")
                                end tell
                              end tell"
              )
  fi

  if [ $(osascript -e 'tell application "Music" to get player state') == "stopped" ]; then
      # newLabel="Music"
      sketchybar -m --set "$NAME" drawing=off
  else
      if [ "${#songTitle}" -gt "$maxTitleLength" ]; then
        songTitle="$(echo ${songTitle:0:19})…"
      fi
      if [ "${#songArtist}" -gt "$maxTitleLength" ]; then
        songArtist="$(echo ${songArtist:0:19})…"
      fi
      if [ $SHOW_ARTIST -eq 0 ]; then
        newLabel="$songTitle"
      else
        newLabel="$songArtist - $songTitle"
      fi

      if [ "$audioFormat" = "Dolby Atmos" ]; then
        sketchybar -m --set $NAME icon=ﮱ
      elif [ "$audioFormat" = "Lossless" ]; then
        sketchybar -m --set $NAME icon=ﲋ
      elif [ "$audioFormat" = "High Res Lossless" ]; then
        sketchybar -m --set $NAME icon=ﲋ
      else
        sketchybar -m --set $NAME icon=􀑪
      fi

      sketchybar -m --set $NAME label="$newLabel"
      sketchybar -m --set "$NAME" drawing=on \
                                  update_freq=5
  fi
fi


//button 1 of group 1 of group 1 of group 1 of splitter group 1 of window "Music" 