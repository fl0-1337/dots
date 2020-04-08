#!/bin/sh
# Fixing misbehaving Java Applications (https://wiki.archlinux.org/index.php/Dwm#Fixing_misbehaving_Java_applications)
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="$HOME/.local/bin:$PATH"

# SET PROGS
export FILE="lf"
export EDITOR="/usr/bin/nvim"
export TERMINAL="/usr/local/bin/st"
export MUSIC="/usr/bin/cmus"
export BROWSER="/usr/bin/qutebrowser"
export READER="/usr/bin/zathura"

# $HOME CLEAN-UP
export ZDOTDIR="$HOME/.config/zsh"
export WGETRC="${XDG_CONFIG_HOME:$HOME/.config}/wget/wgetrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:$HOME/.config}/gtk-2.0/gtkrc-2.0"

# LESS
export LESSHISTFILE="-"
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

# START WM WITH LOGIN
exec startx
