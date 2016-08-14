#!/usr/bin/env bash

TOGGLE="/tmp/mic_mute_toggled.pid"

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    /usr/bin/amixer -q sset Capture toggle
    notify-send 'Internal Mic' 'Enabled' -i /usr/share/icons/gnome/48x48/status/microphone-sensitivity-high.png --expire-time=6000
else
    rm -f $TOGGLE
    /usr/bin/amixer -q sset Capture toggle
    notify-send 'Internal Mic' 'Disabled' -i /usr/share/icons/gnome/48x48/status/microphone-sensitivity-muted.png --expire-time=6000
fi

