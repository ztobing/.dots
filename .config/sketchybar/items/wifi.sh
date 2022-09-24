#!/usr/bin/env sh

sketchybar --add item     wifi right               \
           --set wifi     update_freq=15               \
                          icon.color=$BLACK            \
                          icon.font="$NERD_FONT:Regular:14.0" \
                          icon.padding_left=10         \
                          icon.padding_right=0         \
                          label.color=$BLACK           \
                          label.padding_left=5        \
                          label.padding_right=10       \
                          width=dynamic                    \
                          align=center                 \
                          script="$PLUGIN_DIR/wifi.sh" \
                          background.color=$BLUE  \
                          background.height=26         \
                          background.corner_radius=11   \
                          background.padding_right=5   \
