#!/usr/bin/env bash

/usr/bin/systemd-cat -t "Corded Mouse" /usr/bin/echo "***** Starting Logitech G300S Configuration... *****"

/usr/local/bin/ratslap --modify F3 --colour red --G4 Super_L+, --G5 Super_L+. --G6 LeftCtrl+PageUp --G7 LeftCtrl+PageDown --G8 ModeSwitch --G9 RightShift+H

/usr/bin/systemd-cat -t "Corded Mouse" /usr/bin/echo "***** Done Logitech G300S Configuration... *****"
