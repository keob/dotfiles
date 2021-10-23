#!/bin/sh

if [ -f ~/.Xresources ]; then
    xrdb -merge ~/.Xresources
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xset b off

xsetroot -cursor_name left_ptr

habak -ms ~/Pictures/wallpaper1.png

exec bspwm
