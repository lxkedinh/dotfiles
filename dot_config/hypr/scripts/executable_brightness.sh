#!/bin/bash

function send_notification() {
    brightness=`xbacklight -get`
    dunstify -i brightness -t 800 -r 982498 -u normal "brightness: $brightness%"
}

case $1 in
    up)
    brightnessctl s 5%+
    send_notification
    ;;
    down)
    brightnessctl -n s 5%-
    send_notification
    ;;
esac