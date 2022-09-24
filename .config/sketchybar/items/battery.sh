#!/usr/bin/env sh

ADAPTER_EVENT="com.apple.system.powermanagement.poweradapter"

sketchybar --add event batt_state_changed $ADAPTER_EVENT        \
           --add item     battery right                         \
           --set battery  updates=on                            \
                          update_freq=30                        \
                          icon.color=$BLACK                     \
                          icon.font="$NERD_FONT:Regular:14.0"   \
                          icon.padding_left=10                  \
                          icon.padding_right=0                  \
                          label.color=$BLACK                    \
                          label.padding_left=5                  \
                          label.padding_right=10                \
                          width=dynamic                         \
                          align=center                          \
                          script="$PLUGIN_DIR/battery.sh"       \
                          background.color=$GREEN               \
                          background.height=26                  \
                          background.corner_radius=11           \
                          background.padding_right=10           \
            --subscribe battery batt_state_changed              \
