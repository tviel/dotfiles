#!/bin/sh
xrandr --output "DisplayPort-1" --auto --output "HDMI-A-1" --auto --left-of "DisplayPort-1"

pkill picom
pkill polybar

wal -R

while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --experimental-backends --config /home/tviel/.config/picom/picom.conf > /dev/null &

feh --no-fehbg --bg-fill "/home/tviel/.dotfiles/wallpapers/knight.jpg"

sxhkd &

if [[ ! `pidof xfce-polkit`  ]]; then
     /usr/lib/xfce-polkit/xfce-polkit &
fi


# load scratchpads terminal applications due to size parameters not working in dwm.c
alacritty --class spfm -o window.dimensions.columns=240 -o window.dimensions.lines=60 -e ranger &
alacritty --class spterm -o window.dimensions.columns=240 -o window.dimensions.lines=60 &

$(sleep 4s && polybar dwm) &

dropbox
flameshot
