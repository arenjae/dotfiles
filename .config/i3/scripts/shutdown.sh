#!/bin/bash

# res=$(rofi -dmenu -p "menu:" -bw 0 -bc "#f3f4f5" -bg "#f3f4f5" -fg "#2f343f" -hlbg "#2f343f" -hlfg "#f3f4f5" -separator-style none -location 0 -width 250 -hide-scrollbar -padding 30 -font "System San Francisco Display 18" < /home/khoaduccao/.config/dmenu)
# res=$(echo "lock;reload;restart;logout;suspend;shutdown" | rofi -sep ";" -dmenu -p "power:" -bw 0 -bc "#f3f4f5" -bg "#f3f4f5" -fg "#2f343f" -hlbg "#2f343f" -hlfg "#f3f4f5" -separator-style none -location 0 -width 250 -hide-scrollbar -padding 30)
res=$(echo "lock;reload;restart;logout;suspend;shutdown" | rofi -sep ";" -dmenu -p "power" -location 0 -width 400 -padding 60 -lines 6)

if [ $res = "lock" ]; then
    lock -p -- scrot
elif [ $res = "logout" ]; then
    i3-msg exit
elif [ $res = "reload" ]; then
    i3-msg restart
elif [ $res = "suspend" ]; then
    systemctl suspend
elif [ $res = "restart" ]; then
    systemctl reboot
elif [ $res = "shutdown" ]; then
    systemctl poweroff
fi
exit 0
