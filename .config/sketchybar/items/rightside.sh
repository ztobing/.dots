#!/usr/bin/env zsh

# -----------------------
# Date and Time
# -----------------------
sketchybar --add item clock right                                \
           --set clock update_freq=10                            \
                 script="$PLUGIN_DIR/clock.sh"                   \
                 icon=

# -----------------------
# Battery
# -----------------------
sketchybar --add item battery right                             \
           --set battery update_freq=120                        \
                 script="$PLUGIN_DIR/batt.sh"                   \
                 background.color=$COLOR_6                      \
                 icon=