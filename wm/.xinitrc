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

exec bspwm
