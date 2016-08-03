#!/usr/bin/env bash

declare -i ID
ID=`/usr/bin/xinput list | /usr/bin/grep -Eio 'touchpad\s*id\=[0-9]{1,2}' | /usr/bin/grep -Eo '[0-9]{1,2}'`
declare -i STATE
STATE=`/usr/bin/xinput list-props $ID | /usr/bin/grep 'Device Enabled' | /usr/bin/awk '{print $4}'`

if [ $STATE -eq 1 ]
then
    /usr/bin/touch /tmp/touchpad_toggled.pid && /usr/bin/echo "1" > /tmp/touchpad_toggled.lock
    /usr/bin/xinput disable $ID
    /usr/bin/notify-send -i /usr/share/icons/gnome/scalable/status/touchpad-disabled-symbolic.svg 'Touchpad' 'Disabled' && sleep 5 &
else
    /usr/bin/rm -f /tmp/touchpad_toggled.*
    /usr/bin/xinput enable $ID
    /usr/bin/notify-send -i /usr/share/icons/gnome/scalable/devices/input-touchpad-symbolic.svg 'Touchpad' 'Enabled' && sleep 5 &
fi

