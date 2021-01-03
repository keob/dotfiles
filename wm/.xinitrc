#!/bin/sh

get_date(){
    date '+%m-%d %H:%M %a'
}

get_bat(){
    echo $(acpi -b | awk '{ print $4 }' | tr -d ',')
}

while true; do
    xsetroot -name " $(get_bat) $(get_date) "
    sleep 60
done &

xset r rate 200 30

xinput set-prop --type=int --format=8 "ELAN2203:00 04F3:309A Touchpad" "libinput Natural Scrolling Enabled" 1
xinput set-prop --type=int --format=8 "ELAN2203:00 04F3:309A Touchpad" "libinput Tapping Enabled" 1

habak -ms ~/Pictures/wallpaper1.png

exec dwm
