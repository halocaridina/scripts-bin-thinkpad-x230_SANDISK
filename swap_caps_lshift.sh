#!/usr/bin/env bash

/usr/bin/setxkbmap -print | sed '/xkb_symbols/ { s/"/+custom(swapcaps)"/2 }' > /tmp/swap_caps_lshift.remap
/usr/bin/xkbcomp /tmp/swap_caps_lshift.remap $DISPLAY > /dev/null 2>&1 &
