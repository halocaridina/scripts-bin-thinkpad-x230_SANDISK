#!/usr/bin/env bash

export DISPLAY=:0
export XAUTHORITY=/home/srsantos/.Xauthority
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

if [ -z "$(lsusb | grep Yubikey)" ] ; then
        /bin/su srsantos -c /usr/bin/xset dpms force off
fi

exit

