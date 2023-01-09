#!/bin/env bash

# set monitor setup
#xrandr --output "DisplayPort-1" --auto --primary --output "HDMI-A-1" --left-of "DisplayPort-1" --auto

# sets wallpaper using feh
feh --no-fehbg --bg-scale "$HOME/.dotfiles/wallpapers/knight.jpg"

# Fix cursor
#xsetroot -cursor_name left_ptr

# map XPPen
xsetwacom --set "17" MapToOutput HDMI-A-1

# kill if already running
killall -9 picom sxhkd 

# sets superkey
#ksuperkey -e 'Super_L=Alt_L|F1' &
#ksuperkey -e 'Super_R=Alt_L|F1' &

# start hotkey daemon
sxhkd &

# Launch notification daemon
#dunst -config $HOME/.config/i3/dunstrc &

# start compositor and power manager
#xfce4-power-manager &

while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom &
#picom --config $HOME/.config/picom/picom.conf &

# start polkit
#if [[ ! `pidof xfce-polkit` ]]; then
#    /usr/lib/xfce-polkit/xfce-polkit &
#fi

#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &


# start udiskie
#udiskie &

# replace neovim colorscheme
#sed -i "s/theme =.*$/theme = \"norchad\",/g" $HOME/.config/nvim/lua/chadrc.lua

# change xfce4-terminal colorscheme
#XFCE_TERM_PATH="$HOME/.config/xfce4/terminal"
#cp "$XFCE_TERM_PATH"/colorschemes/nord "$XFCE_TERM_PATH"/terminalrc

#glava --desktop --force-mod radial

#megasync
#dropbox
#flameshot
