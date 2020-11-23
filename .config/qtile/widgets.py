# import from libs
import subprocess
from libqtile import widget

# import from files
from colors import init_colors

# variables
colors = init_colors()
scriptfolder: str = "/home/flo/.config/qtile/barscripts/"

# define themes
widget_theme = {"font": "Sans",
                "fontsize": 10,
                "foreground": colors[1],
                "background": colors[0],
                "padding": 6,
                }

sep_theme = {
    "background": colors[1],
    "foreground": colors[1],
    "padding": 0
}


# define widgets
# i know there a built-in widgets for most of that stuff
# but i like to write this output commands by my own... so..
def space_widget():
    return widget.Spacer(background=colors[0], length=10)


def sep_widget():
    return widget.Sep(**sep_theme)


def cpu_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "cpu").decode("utf-8").replace('\n', ''),
    )


def layout_widget():
    return widget.CurrentLayoutIcon(
        **widget_theme,
        scale=0.6
    )


def group_widget():
    return widget.GroupBox(
        **widget_theme,
        active=colors[1],
        inactive=colors[1],
        this_current_screen_border=colors[2],
        highlight_color=colors[0],
        highlight_method="line",
        urgent_border=colors[3],
        urgent_text=colors[3],
        borderwidth=2,
        hide_unused="true"
    )


def window_widget():
    return widget.WindowName(
        **widget_theme,
    )


def music_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "music").decode("utf-8").replace('\n', ''),
    )


def apt_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "apt").decode("utf-8").replace('\n', ''),
    )


def hides_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "hides").decode("utf-8").replace('\n', ''),
    )


def volume_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "volume").decode("utf-8").replace('\n', ''),
    )


def files_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "files").decode("utf-8").replace('\n', ''),
    )


def mounts_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "mounts").decode("utf-8").replace('\n', ''),
    )


def battery_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "battery").decode("utf-8").replace('\n', ''),
    )


def ram_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "ram").decode("utf-8").replace('\n', ''),
    )


def time_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=1,
        func=lambda: subprocess.check_output(scriptfolder + "time").decode("utf-8").replace('\n', ''),
    )


def network_widget():
    return widget.GenPollText(
        **widget_theme,
        update_interval=10,
        func=lambda: subprocess.check_output(scriptfolder + "internet").decode("utf-8").replace('\n', ''),
    )


def pomodoro_widget():
    return widget.Pomodoro(
        **widget_theme,
        prefix_inactive="⏱",
        color_break=colors[3],
        color_inactive=colors[3],
        color_active=colors[4])


# define widget list
def init_widgets_list():
    widgets_list = [
        space_widget(),
        group_widget(),
        layout_widget(),
        sep_widget(),
        pomodoro_widget(),
        space_widget(),

        window_widget(),

        music_widget(),
        mounts_widget(),
        hides_widget(),
        apt_widget(),
        sep_widget(),
        volume_widget(),
        sep_widget(),
        cpu_widget(),
        sep_widget(),
        files_widget(),
        sep_widget(),
        ram_widget(),
        sep_widget(),
        network_widget(),
        sep_widget(),
        battery_widget(),
        sep_widget(),
        time_widget(),
        space_widget(),
        widget.Systray(),
        widget.Notify(),
    ]
    return widgets_list
