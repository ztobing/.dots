#!/usr/bin/env sh

sketchybar --add item audio.output right                                \
           --set audio.output script="$PLUGIN_DIR/audio.sh"             \
                background.color=$COLOR_5                               \
                update_freq=5



sketchybar --add item music.indicator right                             \
           --set music.indicator script="$PLUGIN_DIR/appleMusic.sh"     \
                                 updates=on                             \
                                 icon.font="Hack Nerd Font:Bold:20.0"   \
                                 icon=                                 \
                                 background.color=$COLOR_4              \
           --add event music_updated com.apple.Music.playerInfo         \
           --subscribe music.indicator music_updated