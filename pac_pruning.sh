#!/usr/bin/env bash

NUM_2_PRUNE="`/usr/bin/paccache -k 2 -d -v | grep -v "==" | grep -v ^$ | wc -l`"

if [ "$NUM_2_PRUNE" -lt 40 ]; then
    exit 0
else
    notify-send -u critical -i /usr/share/icons/gnome/256x256/status/important.png 'Time to clean the pacman cache!!' "${NUM_2_PRUNE} packages can be pruned."
fi
exit 0

