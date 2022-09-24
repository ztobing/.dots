#!/usr/bin/env zsh

# -----------------------
# Apple
# -----------------------
sketchybar --add item apple.logo left                   \
           --set apple.logo icon=􀣺                      \
                            icon.font="SF:Bold:18"      \
                            icon.padding_right=0        \
                            icon.padding_left=10

# -----------------------
# Foreground App Name
# -----------------------
sketchybar --add event window_focus                                 \
           --add item system.label left                             \
           --set system.label position=left                         \
                              drawing=on                            \
                              script="$PLUGIN_DIR/windowTitle.sh"   \
                              width=200                             \
                              background.color=$COLOR_FG            \
                              label.color=$COLOR_BG                 \
           --subscribe system.label front_app_switched window_focus \