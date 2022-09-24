#!/usr/bin/env sh

APPLE_MUSIC_EVENT="com.apple.Music.playerInfo"
BLUETOOTH_EVENT="com.apple.bluetooth.status"

sketchybar --add event music_event      $APPLE_MUSIC_EVENT                  \
           --add event bluetooth_event  $BLUETOOTH_EVENT                    \
           --add item                   audio right                         \
           --set audio                  updates=on                          \
                                        icon.color=$BLACK                   \
                                        icon.font="$NERD_FONT:Regular:14.0" \
                                        icon.padding_left=10                \
                                        icon.padding_right=0                \
                                        label.color=$BLACK                  \
                                        label.padding_left=5                \
                                        label.padding_right=10              \
                                        width=dynamic                       \
                                        align=center                        \
                                        script="$PLUGIN_DIR/audio.sh"       \
                                        background.color=$YELLOW            \
                                        background.height=26                \
                                        background.corner_radius=11         \
                                        background.padding_right=5          \
           --subscribe audio            music_event bluetooth_event
