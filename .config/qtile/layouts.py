from libqtile import layout

from rules import init_float_rules

init_float_rules()


def init_layouts():
    layout_theme = {"border_width": 2,
                    "margin": 8,
                    "border_focus":     "#D8DEE9",  # nord4
                    "border_normal":    "#3B4252"   # nord1
                    }

    layouts = [
        layout.MonadTall(**layout_theme),
        layout.MonadWide(**layout_theme),
        layout.Max(),
        layout.Stack(num_stacks=2),
        layout.Matrix(**layout_theme),
        layout.Floating(**layout_theme),

        # Try more layouts by unleashing below layouts.
        layout.TreeTab(**layout_theme),
        layout.VerticalTile(),
        layout.Slice(),
        layout.Columns(),

        # layout.Bsp(),
        # layout.Zoomy(),
        # layout.RatioTile(),
        # layout.Tile(),
    ]

    return layouts


floating_layout = layout.Floating(float_rules=init_float_rules())
