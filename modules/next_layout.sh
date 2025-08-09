#!/bin/bash

# ❯ hyprctl keyword input:kb_layout "gr:polytonic"
#
# ❯ hyprctl getoption input:kb_layout
# str: gr:polytonic
# set: true

# hyprctl getoption input:kb_layout | grep str
# hyprctl getoption input:kb_layout | grep str | cut -d ' ' -f2
#

options=( "us" "gr:polytonic")
current_option=`hyprctl getoption input:kb_layout | grep str | cut -d ' ' -f2`
next_option=""

for i in "${!options[@]}"; do
    if [[ "${options[$i]}" == "$current_option" ]]; then
        next_option="${options[(($i+1)) % ${#options[@]}]}"
        break
    fi
done

# echo "Next option is: $next_option"
hyprctl keyword input:kb_layout "$next_option"
# hyprctl notify -1 1000 "rgb(4889a8)" "Keyboard layout set to $next_option"
