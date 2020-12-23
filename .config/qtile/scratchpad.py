from libqtile.config import ScratchPad, DropDown, Key
from libqtile.command import lazy


def init_scratchpad():
    # Terminal
    terminal = "alacritty"

    # Configuration
    height = 0.4650
    y_position = 0.0151
    warp_pointer = False
    on_focus_lost_hide = True
    opacity = 1

    return [
        ScratchPad("SPD",
                   dropdowns=[
                       # Drop down terminal with tmux session
                       DropDown("term",
                                terminal + " -t scratchpad -e tmux new-session -A -s 'scratch'",
                                opacity=opacity,
                                y=y_position,
                                height=height,
                                on_focus_lost_hide=on_focus_lost_hide,
                                warp_pointer=warp_pointer),

                       # Another terminal exclusively for music player
                       DropDown("music",
                                terminal + " -t musicplayer -e ncmpcpp",
                                opacity=opacity,
                                y=y_position,
                                height=height,
                                on_focus_lost_hide=on_focus_lost_hide,
                                warp_pointer=warp_pointer),

                       # Another terminal exclusively for qshell
                       DropDown("calc",
                                terminal + " -e bc",
                                opacity=opacity,
                                y=y_position,
                                height=height,
                                on_focus_lost_hide=on_focus_lost_hide,
                                warp_pointer=warp_pointer)
                   ]
                   ),
    ]


def init_dropdown_keybindings():
    # Key alias
    mod = "mod4"
    alt = "mod1"
    altgr = "mod5"

    return [
        Key([mod], "space",
            lazy.group["SPD"].dropdown_toggle("term")),
        Key([mod], "m",
            lazy.group["SPD"].dropdown_toggle("music")),
        Key([mod], "c",
            lazy.group["SPD"].dropdown_toggle("calc")),
    ]
