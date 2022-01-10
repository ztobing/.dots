#!/usr/bin/env zsh
export PATH=/Users/zef/Library/Python/3.9/bin/:$PATH

eval "$(starship init zsh)"

if [ $TERM_PROGRAM = "iTerm.app" ]; then
    clear && neofetch --color_blocks off --iterm2 --source ~/.sagiri.jpg --size 205
    alias c="clear && neofetch --color_blocks off --iterm2 --source ~/.sagiri.jpg --size 205"
else
    clear && pfetch
    alias c="clear && pfetch"
fi

alias rice="git --work-tree=$HOME --git-dir=$HOME/.dots"
