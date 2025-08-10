## hyprland-waybar-keyboard-switching

it does what it says (and not much more)

set `options` in `modules/next_layout.sh` to reflect
the list of keyboard layout choices you want to have available

click on the keyboard icon in the waybar and you will be sent to the next available layout

NB: your hyperland config should have `input` set like:
```
input {
    follow_mouse = 2 # 0|1|2|3
    float_switch_override_focus = 2
    kb_layout="gr:polytonic"
    kb_layout=us
}
```

make sure that there is one line per `kb_layout`
