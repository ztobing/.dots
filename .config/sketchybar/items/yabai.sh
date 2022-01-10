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
                              background.color=$COLOR_FG             \
                              label.color=$COLOR_BG                  \
           --subscribe system.label front_app_switched window_focus \

# -----------------------
# Spaces
# -----------------------
sketchybar -m --add space first left                             \
              --set first associated_display=1                   \
                         associated_space=1                      \
                         icon=一                                 \
                         icon.highlight_color=$COLOR_1           \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_FG              \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         click_script="yabai -m space --focus 1" \
                                                                 \
              --add space sec left                               \
              --set sec  associated_display=1                    \
                         associated_space=2                      \
                         icon=二                                 \
                         icon.highlight_color=$COLOR_2           \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_FG              \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         click_script="yabai -m space --focus 2" \
                                                                 \
              --add space third left                             \
              --set third  associated_display=1                  \
                         associated_space=3                      \
                         icon=三                                 \
                         icon.highlight_color=$COLOR_3           \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_FG              \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         click_script="yabai -m space --focus 3" \
                                                                 \
              --add space fourth left                            \
              --set fourth  associated_display=1                 \
                         associated_space=4                      \
                         icon=四                                 \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_FG              \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         icon.highlight_color=$COLOR_4           \
                         click_script="yabai -m space --focus 4"