#!/usr/bin/env sh

GPU_CHANGE_EVENT="com.apple.Music.playerInfo"

sketchybar --add event gpu_change_event $GPU_CHANGE_EVENT \
           --add item     gpu right               \
           --set gpu      updates=on               \
                          update_freq=60            \
                          icon.color=$BLACK            \
                          icon.font="$NERD_FONT:Regular:16.0" \
                          label.color=$BLACK           \
                          icon.padding_left=10         \
                          icon.padding_right=0         \
                          icon=􀫥                        \
                          label.padding_right=8       \
                          width=dynamic                    \
                          align=right                 \
                          script="$PLUGIN_DIR/gpu.sh" \
                          background.color=$RED  \
                          background.height=26         \
                          background.corner_radius=11   \
                          background.padding_right=5   \
        #    --subscribe gpu gpu_change_event
