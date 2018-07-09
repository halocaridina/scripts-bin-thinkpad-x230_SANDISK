#!/usr/bin/env bash

# Get current volume and state
MIC_STATE="`/usr/bin/pulseaudio-ctl full-status | awk '{print $3}'`"

# Show volume with volnoti
if [ "$MIC_STATE" = "yes" ]; then
  /usr/bin/volnoti-show -s /home/srsantos/.dotfiles/dunst/.config/dunst/icons/microphone-sensitivity-muted.svg 0
else
  /usr/bin/volnoti-show -s /home/srsantos/.dotfiles/dunst/.config/dunst/icons/microphone-sensitivity-high.svg 50
fi

exit 0
