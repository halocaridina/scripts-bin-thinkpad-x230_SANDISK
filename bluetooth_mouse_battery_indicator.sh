#!/usr/bin/env bash

NAME="`cat /sys/class/power_supply/hid-00:1f:20:e1:13:39-battery/model_name`"
CAPACITY="`cat /sys/class/power_supply/hid-00:1f:20:e1:13:39-battery/capacity`"

/usr/bin/notify-send -i /usr/share/icons/gnome/256x256/devices/input-mouse.png "${NAME}" "Batteries are at ${CAPACITY}%"
