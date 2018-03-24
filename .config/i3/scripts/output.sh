#!/bin/bash

res=$(echo "disconnect;HDMI1;HDMI2;DP1;DP2" | rofi -sep ";" -dmenu -p "output:" -location 0 -width 250 -padding 30 -lines 6)

if [ $res = "disconnect" ]; then
    xrandr --output HDMI-1 --off --output HDMI-2 --off
elif [ $res = "HDMI1" ]; then
    xrandr --output HDMI-1 --right-of eDP-1
elif [ $res = "HDMI2" ]; then
    xrandr --output HDMI-2 --right-of eDP-1
elif [ $res = "DP1" ]; then
    xrandr --output DP-1 --right-of eDP-1
elif [ $res = "DP2" ]; then
    xrandr --output DP-2 --right-of eDP-1
fi
exit 0
