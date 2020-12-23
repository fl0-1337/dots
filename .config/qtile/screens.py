from widgets import init_widgets_list, init_widgets_list_second
from libqtile.config import Screen
from libqtile import bar


def init_screens():
    return [
        Screen(top=bar.Bar(widgets=init_widgets_list(),
                           size=20)
               ),

        Screen(top=bar.Bar(widgets=init_widgets_list_second(),
                           size=20)
               )
    ]
