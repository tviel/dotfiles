#!/bin/bash
#
#


# select terminal desktop
#
bspc desktop -f TERM


# start background progs
# audio visualizer
glava --desktop --force-mod radial &


# Start terminal sessions
#

alacritty &
alacritty --class matrix,matrix -e neo-matrix -a -c orange -F -D &




