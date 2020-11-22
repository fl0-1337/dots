# import from libs
from typing import List  # noqa: F401

# from libqtile.config import Screen
# from libqtile.lazy import lazy

# import from files
from bindings import keys
from groups import groups
from screens import init_screens
from layouts import init_layouts
from scratchpad import init_dropdown_keybindings, init_scratchpad

# init layouts and screens
layouts = init_layouts()
screens = init_screens()

# init scratchpad
groups += init_scratchpad()
keys += init_dropdown_keybindings()

# define keys
# keys=init_keys()
# keys += init_keys_groups()


dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False

auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
