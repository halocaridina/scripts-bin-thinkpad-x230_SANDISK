#!/bin/bash

declare -i ID
ID=`xinput list | grep -Eio 'touchpad\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
declare -i STATE
STATE=`xinput list-props $ID|grep 'Device Enabled'|awk '{print $4}'`

if [ $STATE -eq 1 ]
then
    touch /tmp/touchpad_toggled.pid && echo "1" > /tmp/touchpad_toggled.pid
    xinput disable $ID
    notify-send 'Touchpad' 'Disabled' -i /usr/share/icons/Adwaita/48x48/devices/input-touchpad.png
else
    rm -f /tmp/touchpad_toggled.pid
    xinput enable $ID
    notify-send 'Touchpad' 'Enabled' -i /usr/share/icons/Adwaita/48x48/devices/input-touchpad.png
fi
