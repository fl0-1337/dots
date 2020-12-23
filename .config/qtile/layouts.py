# imports from libs
from libqtile import layout, hook

# imports from files
from rules import init_float_rules


# define layouts
def init_layouts():
    layout_theme = {"border_width": 2,
                    "margin": 8,
                    "border_focus": "#D8DEE9",  # nord4
                    "border_normal": "#3B4252"  # nord1
                    }

    layouts = [
        layout.MonadTall(**layout_theme),
        layout.MonadWide(**layout_theme),
        layout.Max(),
        layout.Stack(**layout_theme, num_stacks=2),
        layout.Matrix(**layout_theme),
        layout.Floating(**layout_theme, float_rules=init_float_rules()),

        # Try more layouts by unleashing below layouts.
        # layout.TreeTab(**layout_theme),
        # layout.VerticalTile(),
        # layout.Slice(),
        # layout.Columns(),
        # layout.Bsp(),
        # layout.Zoomy(),
        # layout.RatioTile(),
        # layout.Tile(),
    ]

    return layouts


# set rules for floating windows
# floating_layout = layout.Floating(float_rules=init_float_rules()),

# rules for specific windows
@hook.subscribe.client_new
def float_my_app(window):
    if window.window.get_name() == "mpd-art-box":
        window.floating = True

@hook.subscribe.client_new
def float_my_app(window):
    if window.window.get_name() == "FortiClient SSLVPN":
        window.floating = True

@hook.subscribe.client_new
def float_my_app(window):
    if window.window.get_name() == "ksnip":
        window.floating = True
