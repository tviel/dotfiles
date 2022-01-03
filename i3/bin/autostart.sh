#!/bin/env bash

# set monitor setup
xrandr --output "HDMI-A-0" --auto --output "HDMI-A-1" --left-of "HDMI-A-0" --auto

# sets wallpaper using feh
feh --no-fehbg --bg-scale "$HOME/.config/i3/gorilla_abstract.png"

# Fix cursor
xsetroot -cursor_name left_ptr

# kill if already running
killall -9 picom xfce4-power-manager ksuperkey dunst sxhkd conky eww

# Launch Conkeww
#sed -i "s/colors\/color-.*/colors\/color-nord.yuck\")/g" $HOME/.config/conkeww/eww.yuck
#eww --config $HOME/.config/conkeww/ open conkeww-main

# Launch Conky
#conky -c $HOME/.config/conky/axyl.conkyrc

# sets superkey
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# start hotkey daemon
sxhkd &

# Launch notification daemon
dunst -config $HOME/.config/i3/dunstrc &

# start compositor and power manager
xfce4-power-manager &

while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config $HOME/.config/i3/picom.conf &

# start polkit
if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi

# start udiskie
#udiskie &

# replace neovim colorscheme
#sed -i "s/theme =.*$/theme = \"norchad\",/g" $HOME/.config/nvim/lua/chadrc.lua

# change xfce4-terminal colorscheme
#XFCE_TERM_PATH="$HOME/.config/xfce4/terminal"
#cp "$XFCE_TERM_PATH"/colorschemes/nord "$XFCE_TERM_PATH"/terminalrc

megasync
dropbox
flameshot
