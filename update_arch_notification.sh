#!/usr/bin/env bash

export XAUTHORITY=/home/srsantos/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

UPDATES="`/usr/bin/checkupdates`"
NUM_UPDATES="`/usr/bin/checkupdates | wc -l`"

if ! [ "`ping -4 -c 1 google.com`" ]; then
    notify-send -u critical "Currently offline." "Will check for Archlinux updates again in 2 hrs."
elif [ "$NUM_UPDATES" == 0 ]; then
    notify-send -u low 'No updates for Archlinux.'
else
    notify-send -u critical 'Archlinux updates:' "${UPDATES}"
fi
exit
