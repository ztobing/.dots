#!/usr/bin/env zsh

sketchybar --add event network_updated com.apple.system.config.network_change \
                                                                              \
           --add item network.wifi right                    \
           --set network.wifi script="$PLUGIN_DIR/wifi.sh"  \
                              updates=on                    \
                              background.color=$COLOR_5     \
                              update_freq=10                \
           --subscribe network.wifi network_updated         \
                                                            \
           --add item network.eth right                     \
           --set network.eth script="$PLUGIN_DIR/eth.sh"    \
                              updates=on                    \
                              background.color=$COLOR_2     \
                              update_freq=10                \
           --subscribe network.eth network_updated