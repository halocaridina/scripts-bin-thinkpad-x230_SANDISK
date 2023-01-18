#!/usr/bin/env bash

export XAUTHORITY=/home/srsantos/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

/usr/bin/paplay --server /run/user/1000/pulse/native /usr/share/sounds/freedesktop/stereo/power-unplug.oga > /dev/null 2>&1

/usr/bin/notify-send 'Changing Power States' --expire-time=4000
