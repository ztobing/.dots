#!/usr/bin/env zsh

# TODO: Find a network change event?
sketchybar --add event network_updated com.apple.system.config.network_change       \
                                                                                    \
           --add item network.wifi right                                            \
           --set network.wifi script="$PLUGIN_DIR/wifi.sh"                          \
                              updates=on                                            \
                              background.color=$COLOR_5                             \
                              update_freq=10                                        \
           --subscribe network.wifi network_updated                                 \
                                                                                    \
           --add item network.eth.speed right                                       \
           --set network.eth.speed script="$PLUGIN_DIR/netActivity.sh en5"          \
                                   updates=on                                       \
                                   background.color=$COLOR_2_ALT                    \
                                   label.color=$COLOR_2_ALT                         \
                                   update_freq=2                                    \
                                   label="aaaaaa"                                   \
                                   background.padding_left=-12                      \
                                   icon.padding_left=0                              \
                                                                                    \
           --add item network.eth.speed.up right                                    \
           --set network.eth.speed.up label.font="Hack Nerd Font:Bold:10.0"         \
                                      background.color=0x00000000                   \
                                      background.border_color=0x00000000            \
                                      y_offset=5                                    \
                                      width=0                                       \
                                      background.padding_right=-55                  \
           --add item network.eth.speed.down right                                  \
           --set network.eth.speed.down label.font="Hack Nerd Font:Bold:10.0"       \
                                        background.color=0x00000000                 \
                                        background.border_color=0x00000000          \
                                        y_offset=-5                                 \
                                        width=0                                     \
                                        background.padding_right=-55                \
                                                                                    \
           --add item network.eth right                                             \
           --set network.eth script="$PLUGIN_DIR/eth.sh"                            \
                              updates=on                                            \
                              background.color=$COLOR_2                             \
                              update_freq=10                                        \
           --subscribe network.eth network_updated                                  \
                                