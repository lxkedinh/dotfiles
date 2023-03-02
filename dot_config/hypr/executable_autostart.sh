#!/usr/bin/bash

config=$HOME/.config/hypr
scripts=$config/scripts

# notification manager
dunst &
# set wallpaper
hyprpaper &

# waybar
$scripts/launch_waybar &
$scripts/tools/dynamic &

# clock in terminal
#kitty --hold -T tty-clock tty-clock -c -C 5 -f "%a %F"
# get weather data for today
$config/eww/dashboard/scripts/weather_info --getdata
# authentication agent for window popups to ask for password
# /usr/lib/polkit-kde-authentication-agent-1
# set environment variables necessary for screen sharing
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
