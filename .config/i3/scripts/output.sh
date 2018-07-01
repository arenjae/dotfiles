#!/bin/bash

res=$(echo "disconnect;HDMI1;HDMI1 (1080p);HDMI2;DP1;DP1 (1080p);DP2" | rofi -sep ";" -dmenu -p "output" -location 0 -width 400 -padding 60 -lines 8)

if [ $res = "disconnect" ]; then
    xrandr --output HDMI-1 --off --output HDMI-2 --off --output DP-1 --off
    exit 0
elif [ $res = "HDMI1" ]; then
    xrandr --auto
    xrandr --output HDMI-1 --mode 3840x2160 --right-of eDP-1
elif [ $res = "HDMI1 (1080p)" ]; then
    xrandr --auto
    xrandr --output HDMI-1 --right-of eDP-1
elif [ $res = "HDMI2" ]; then
    xrandr --auto
    xrandr --output HDMI-2 --mode 3840x2160 --right-of eDP-1
elif [ $res = "DP1" ]; then
    xrandr --auto
    xrandr --output DP-1 --mode 3840x2160 --right-of eDP-1
elif [ $res = "DP1 (1080p)" ]; then
    xrandr --auto 
    xrandr --output DP-1 --mode 1080x1920 --right-of eDP-1
elif [ $res = "DP2" ]; then
    xrandr --output DP-2 --auto --right-of eDP-1
fi
feh --bg-fill /home/rjohnson/Pictures/a.jpg
exit 0
