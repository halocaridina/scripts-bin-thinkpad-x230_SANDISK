#!/usr/bin/env bash

export XAUTHORITY=/home/srsantos/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

/usr/bin/notify-send -i /usr/share/icons/gnome/256x256/status/battery-full-charging.png 'Changing Power States' --expire-time=5000
/usr/bin/aplay /home/srsantos/.i3/sounds/button_click_off.wav > /dev/null 2>&1
