#!/bin/bash
#
#

polybar -q bspwm -c ~/.config/polybar/config.ini &
polybar -q status -c ~/.config/polybar/config.ini &

# apps to start for tray
#
flameshot &
dropbox &

# select terminal desktop
#
bspc desktop -f TERM


# start background progs
# audio visualizer
glava --desktop --force-mod radial &


# Start terminal sessions
#

alacritty &
alacritty --class matrix,matrix -e matrix &




