#!/usr/bin/env bash

TOGGLE="/tmp/mic_mute_toggled.pid"

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    /usr/bin/amixer -q sset Capture toggle
    notify-send 'Internal Mic' 'Enabled' -i /usr/share/icons/Adwaita/48x48/status/microphone-sensitivity-high.png
else
    rm -f $TOGGLE
    /usr/bin/amixer -q sset Capture toggle
    notify-send 'Internal Mic' 'Disabled' -i /usr/share/icons/Adwaita/48x48/status/microphone-sensitivity-muted.png
fi

