#!/usr/bin/env bash

TOGGLE_STATE=/tmp/radio_toggle.lock

if [ ! -e $TOGGLE_STATE ]; then
    touch $TOGGLE_STATE
    /usr/bin/rfkill block all
    notify-send 'Wi-Fi and Bluetooth' 'Disabled' -i /usr/share/icons/gnome-colors-common/scalable/devices/network-wireless.svg
else
    rm -f $TOGGLE_STATE
    /usr/bin/rfkill unblock all
    notify-send 'Wi-Fi and Bluetooth' 'Enabled' -i /usr/share/icons/gnome-colors-common/scalable/devices/network-wireless.svg
fi
