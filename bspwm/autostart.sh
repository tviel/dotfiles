#!/bin/bash
#
#

polybar -q bspwm -c ~/.config/polybar/config.ini &
polybar -q status -c ~/.config/polybar/config.ini &

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




