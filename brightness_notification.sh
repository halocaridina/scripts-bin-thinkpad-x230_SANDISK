#!/usr/bin/env bash
/usr/bin/notify-send -i /usr/share/icons/gnome/256x256/status/battery-full-charging.png 'Changing Power States' && sleep 5 &
/usr/bin/aplay /home/srsantos/.i3/sounds/Click1.wav > /dev/null 2>&1
