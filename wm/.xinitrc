#!/bin/sh

test -r ~/.Xresources && xrdb ~/.Xresources

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

xset b off
xset r rate 200 30

habak -ms ~/Pictures/wallpaper1.png

exec dwm
