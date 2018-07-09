#!/usr/bin/env bash

# Get current volume and state
VOLUME="`/usr/bin/pulseaudio-ctl full-status | awk '{print $1}'`"
SPEAKER_STATE="`/usr/bin/pulseaudio-ctl full-status | awk '{print $2}'`"
MIC_STATE="`/usr/bin/pulseaudio-ctl full-status | awk '{print $3}'`"

# Show volume with volnoti
if [ "$SPEAKER_STATE" = "yes" ]; then
  /usr/bin/volnoti-show -m
##elif [ "$MIC_STATE" = "yes" ]; then
##  /usr/bin/volnoti-show -s /home/srsantos/.dotfiles/dunst/.config/dunst/icons/microphone-sensitivity-muted.svg 0
else
  /usr/bin/volnoti-show $VOLUME
fi

exit 0
