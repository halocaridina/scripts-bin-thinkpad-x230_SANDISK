#!/usr/bin/env bash

TOGGLE="/tmp/screen_lock_toggled_off.lock"

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE && echo "1" > /tmp/screen_lock_toggled_off.lock
    /usr/bin/pkill xautolock
    notify-send 'Auto-Suspend' 'Toggled' -i /usr/share/icons/gnome/48x48/status/changes-allow.png
else
    rm -f $TOGGLE
    /usr/bin/xautolock -time 30 -locker "systemctl suspend" -detectsleep &
    notify-send 'Auto-Suspend' 'Toggled' -i /usr/share/icons/gnome/48x48/status/changes-prevent.png
fi

