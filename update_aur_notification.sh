#!/usr/bin/env bash

export XAUTHORITY=/home/srsantos/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

UPDATES="`pacaur -k | grep aur | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" | cut -d' ' -f4- | sed -e 's/^[ \t]*//g' | cut -d' ' -f1`"
NUM_UPDATES="`pacaur -k | grep aur | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" | cut -d' ' -f4- | sed -e 's/^[ \t]*//g' | cut -d' ' -f1 | wc -l`"

if ! [ "`ping -4 -c 1 google.com`" ]; then
    notify-send -u critical "Currently offline." "Will check for AUR updates again in 2 hrs."
elif [ "$NUM_UPDATES" == 0 ]; then
    notify-send -u low -i /home/srsantos/.config/dunst/icons/updates-notifier-inactive.svg 'No updates from AUR.'
else
    notify-send -u critical -i /home/srsantos/.config/dunst/icons/software-update-available.svg 'AUR updates:' "${UPDATES}"
fi
exit
