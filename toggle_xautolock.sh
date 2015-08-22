#!/usr/bin/env bash

TOGGLE="/tmp/screen_lock_toggled_off.pid"

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE && echo "1" > /tmp/screen_lock_toggled_off.pid
    /usr/bin/pkill xautolock
    notify-send 'Auto-Suspend' 'Disabled' -i /usr/share/icons/gnome-colors-common/scalable/status/status_unlocked.svg
else
    rm -f $TOGGLE
    /usr/bin/xautolock -time 30 -locker "systemctl suspend" -detectsleep &
    notify-send 'Auto-Suspend' 'Enabled' -i /usr/share/icons/gnome-colors-common/scalable/status/status_lock.svg
fi

