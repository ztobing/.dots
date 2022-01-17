#!/usr/bin/env zsh

 -----------------------
# Spaces
# -----------------------
sketchybar -m --add space first left                             \
              --set first associated_display=1                   \
                         associated_space=1                      \
                         icon=一                                 \
                         icon.highlight_color=$COLOR_FG          \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_1               \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         click_script="yabai -m space --focus 1" \
                                                                 \
              --add space sec left                               \
              --set sec  associated_display=1                    \
                         associated_space=2                      \
                         icon=二                                 \
                         icon.highlight_color=$COLOR_FG          \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_2               \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         click_script="yabai -m space --focus 2" \
                                                                 \
              --add space third left                             \
              --set third  associated_display=1                  \
                         associated_space=3                      \
                         icon=三                                 \
                         icon.highlight_color=$COLOR_FG          \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_3               \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         click_script="yabai -m space --focus 3" \
                                                                 \
              --add space fourth left                            \
              --set fourth  associated_display=1                 \
                         associated_space=4                      \
                         icon=四                                 \
                         icon.color=$COLOR_BG                    \
                         background.color=$COLOR_4               \
                         icon.padding_right=0                    \
                         icon.padding_left=10                    \
                         icon.highlight_color=$COLOR_FG          \
                         click_script="yabai -m space --focus 4"