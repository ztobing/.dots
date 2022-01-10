#!/usr/bin/env sh
# やばいですね

# -----------------------
# Window Management Rules
# -----------------------

# Utilities and Preference Windows 
yabai -m rule --add app="^Finder$" sticky=off layer=above manage=off
yabai -m rule --add app="^System Preferences$" sticky=on layer=above manage=off
yabai -m rule --add app="^Activity Monitor$" sticky=on layer=above manage=off
yabai -m rule --add app="^Disk Utility$" sticky=on layer=above manage=off
yabai -m rule --add app="^System Information$" sticky=on layer=above manage=off
yabai -m rule --add app="^iTerm2$" manage=off
yabai -m rule --add app="^iTerm2$" title="Hotkey Window" manage=off border=off
yabai -m rule --add app="^WireGuard" manage=off
yabai -m rule --add app="^Karabiner-Elements$" sticky=on layer=above manage=off
yabai -m rule --add app="^Karabiner-EventViewer$" sticky=on layer=above manage=off
yabai -m rule --add app="^Logi Options\+$" manage=off
yabai -m rule --add app="^Alfred Preferences$" sticky=on layer=above manage=off
yabai -m rule --add app="^Raycast$" manage=off
yabai -m rule --add app="^AppCleaner$" layer=above manage=off

# Social and Entertainment
yabai -m rule --add app="^Music$" manage=off layer=above
yabai -m rule --add app="^LINE$" title!="^LINE$" manage=off layer=above
yabai -m rule --add app="^Spark$" title!="^Spark.*$" manage=off layer=above
yabai -m rule --add app="^Spotify$" manage=off

# Dev Tools
yabai -m rule --add app="^Docker Desktop$" manage=off
yabai -m rule --add app="^Unity Hub$" manage=off layer=above
yabai -m rule --add app="^Unity$" title!="^.* <Metal>$" manage=off layer=above
yabai -m rule --add app="^JetBrains Rider$" manage=off
yabai -m rule --add app="^JetBrains Rider$" title="^.*\[.*\].*$" manage=on # '^(IntelliJ IDEA|WebStorm|CLion|JetBrains Rider)$'
yabai -m rule --add app="^Sourcetree$" manage=off
yabai -m rule --add app="^Sourcetree$" manage=off title="^.*\(.*\)" manage=on

# -----------------------
# Notes:
# -----------------------
# JetBrains IDE: Preferences > Appearance & behavior > Appearance > UI Options > Always show full path in window header
