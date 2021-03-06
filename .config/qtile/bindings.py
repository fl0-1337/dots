from libqtile.config import Key, Drag, Click
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from groups import groups

# variables
mod = "mod4"
terminal = guess_terminal()
runcmd = 'rofi -show run -disable-history -columns 4 -font "monospace 10"'

keys = [
        # switch between windows
        Key([mod], "h",
            lazy.layout.left(),
            desc="Move focus to left"
            ),

        Key([mod], "l",
            lazy.layout.right(),
            desc="Move focus to right"
            ),

        Key([mod], "j",
            lazy.layout.down(),
            desc="Move focus down"
            ),

        Key([mod], "k",
            lazy.layout.up(),
            desc="Move focus up"
            ),

        # stack-control
        Key([mod, "control"], "space",
            lazy.layout.next(),
            desc='Switch window focus to other pane(s) of stack'
            ),

        Key([mod, "control"], "Return",
            lazy.layout.toggle_split(),
            desc='Toggle between split and unsplit sides of stack'
            ),

        # window-sizing
        Key([mod], "i",
            lazy.layout.grow(),
            desc="Grow window"
            ),

        Key([mod, "shift"], "i",
            lazy.layout.shrink(),
            desc="Grow window"
            ),

        Key([mod], "u",
            lazy.layout.maximize(),
            desc="maximize current window"
            ),

        Key([mod, "shift"], "u",
            lazy.layout.normalize(),
            desc="normalize all windows"
            ),

        # Key([mod, "shift"], "Return", lazy.layout.flip()),

        # move windows
        Key([mod, "shift"], "h",
            lazy.layout.shuffle_left(),
            desc="Move window to the left"
            ),

        Key([mod, "shift"], "l",
            lazy.layout.shuffle_right(),
            desc="Move window to the right"
            ),

        Key([mod, "shift"], "j",
            lazy.layout.shuffle_down(),
            desc="Move window down"
            ),

        Key([mod, "shift"], "k",
            lazy.layout.shuffle_up(),
            desc="Move window up"
            ),

        # Grow windows. If current window is on the edge of screen and direction
        # will be to screen edge - window would shrink.
        # Key([mod, "control"], "h", lazy.layout.grow_left(),
        #     desc="Grow window to the left"),
        # Key([mod, "control"], "l", lazy.layout.grow_right(),
        #     desc="Grow window to the right"),
        # Key([mod, "control"], "j", lazy.layout.grow_down(),
        #     desc="Grow window down"),
        # Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),

        # programs
        Key([mod], "Return",
            lazy.spawn(terminal),
            desc="Launch terminal"
            ),

        # rofi-programs
        Key([mod], "d",
            lazy.spawn(runcmd),
            desc="spawn program launcher"
            ),

        Key([mod, "control"], "u",
            lazy.spawn("rofiunicode")),

        Key([mod], "F9",
            lazy.spawn("rofimount -m"),
            desc="mount usb/mtp-devices"
            ),

        Key([mod], "F10",
            lazy.spawn("rofimount -u"),
            desc="unmount usb/mtp-devices"
            ),

        Key([mod, "control"], "s",
            lazy.spawn("rofiwebsearch"),
            desc="search in web or open website"
            ),

        Key([mod, "control"], "o",
            lazy.spawn("rofifileopen"),
            desc=""
            ),

        Key([mod, "control"], "t",
            lazy.spawn("rofitodo"),
            desc="search in web or open website"
            ),

        Key([mod], "Tab",
            lazy.screen.toggle_group()
            ),

        # system
        Key([mod], "x",
            lazy.spawn("lock.sh"),
            desc="lockscreen"
            ),

        Key([mod], "BackSpace",
            lazy.spawn("qtile-winhide -h"),
            desc="hide a window"
            ),

        Key([mod, "shift"], "BackSpace",
            lazy.spawn("qtile-winhide -s"),
            desc="hide a window"
            ),

        Key([mod, "shift"], "q",
            lazy.window.kill(),
            desc="Kill focused window"
            ),

        Key([mod, "control"], "r",
            lazy.restart(),
            desc="Restart Qtile"
            ),

        Key([mod, "control"],
            "q", lazy.shutdown(),
            desc="Shutdown Qtile"),

        Key([mod, "shift"], "space",
            lazy.window.toggle_floating(),
            desc="Toggle between floating and non-floating"
            )
    ]


for i in groups:
    keys.extend([
        Key([mod], i.name,
            lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)
            ),

        Key([mod, "shift"], i.name,
            lazy.window.togroup(i.name),
            desc="Move focused window to group {}".format(i.name)
            ),
    ])


def init_multimedia_keys():
    return [
        # music control
        Key([], "XF86AudioNext",
            lazy.spawn("smixer next")
            ),

        Key([mod], "n",
            lazy.spawn('smixer next')
            ),

        Key([], "XF86AudioPrev",
            lazy.spawn("smixer prev")
            ),

        Key([mod, "control"], "n",
            lazy.spawn('smixer prev')
            ),

        Key([mod], "p",
            lazy.spawn('smixer pause')
            ),

        Key([], "XF86AudioPlay",
            lazy.spawn("smixer pause")
            ),

        Key([], "XF86AudioStop",
            lazy.spawn("smixer stop")
            ),

        Key([mod, "control"], "p",
            lazy.spawn('smixer stop')
            ),

        Key([mod], "a",
            lazy.spawn("mpdcover"),
            desc="show cover of current song"),

        # volume control
        Key([], "XF86AudioRaiseVolume",
            lazy.spawn("smixer up 1")
            ),

        Key([mod], "plus",
            lazy.spawn('smixer up 1')
            ),

        Key([], "XF86AudioLowerVolume",
            lazy.spawn("smixer down 1")
            ),

        Key([mod], "minus",
            lazy.spawn('smixer down 1')
            ),

        Key([mod], "XF86AudioRaiseVolume",
            lazy.spawn("smixer up 5")
            ),

        Key([mod, "control"],
            "plus", lazy.spawn('smixer up 5')
            ),

        Key([mod], "XF86AudioLowerVolume",
            lazy.spawn("smixer down 5")
            ),

        Key([mod, "control"],
            "minus", lazy.spawn('smixer down 5')
            ),

        Key([mod, "control"],
            "m", lazy.spawn('smixer mute')
            ),

        Key([mod, "shift", "control"],
            "m", lazy.spawn('smixer mic'),
            desc="toggle microphone"
            ),

    ]


def init_layout_keys():
    return [

        Key([mod], "t",
            lazy.group.setlayout('monadtall'),
            desc="standard xmonad-layout"
            ),

        Key([mod], "z",
            lazy.group.setlayout('max'),
            desc="stack all windows in fullscreen"
            ),

        Key([mod], "s",
            lazy.group.setlayout('stack'),
            desc="master-stack-layout"
            ),

        Key([mod], "b",
            lazy.group.setlayout('monadwide'),
            desc="bottom-stack-layout from dwm"
            ),

        Key([mod], "g",
            lazy.group.setlayout('matrix'),
            desc="order windows in a grid-layout"
            ),

        Key([mod], "f",
            lazy.group.setlayout('floating'),
            desc="floating layout"
            ),
    ]


def init_brightness_keys():
    return [
        Key([], "XF86MonBrightnessUp",
            lazy.spawn("brightnessctl set +2%")
            ),

        Key([], "XF86MonBrightnessDown",
            lazy.spawn("brightnessctl set 2%-")
            ),
    ]


mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]
