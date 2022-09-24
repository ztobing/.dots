APPLE_MUSIC_EVENT="com.apple.Music.playerInfo"
# POPUP_SCRIPT="sketchybar -m --set spotify.cover popup.drawing=toggle"

sketchybar --add       event           music_change $APPLE_MUSIC_EVENT     \
                                                                           \
           --add       item            music.title center                  \
           --set       music.title     click_script="$POPUP_SCRIPT"        \
                                       icon=􀑪                              \
                                       icon.font="$NERD_FONT:Regular:16.0" \
                                       drawing=off                         \
                                       script="$PLUGIN_DIR/apple_music.sh" \
                                       background.padding_right=0          \
                                       updates=on                          \
                                       update_freq=10000                   \
           --subscribe music.title     music_change