#!/usr/bin/env bash

#/usr/bin/echo -n "210" > /sys/devices/rmi4-00/rmi4-00.fn03/serio2/sensitivity
#/usr/bin/echo -n "25" > /sys/devices/rmi4-00/rmi4-00.fn03/serio2/drift_time

### Below are for old PS/2 emulation paths rather then newer RMI4 over SMBus one above ###
/usr/bin/echo -n "225" > /sys/devices/platform/i8042/serio1/serio2/sensitivity
/usr/bin/echo -n "25" > /sys/devices/platform/i8042/serio1/serio2/drift_time

#/usr/bin/echo -n "1" > /sys/devices/platform/i8042/serio1/serio2/press_to_select
#/usr/bin/echo -n "90" > /sys/devices/platform/i8042/serio1/serio2/speed
#/usr/bin/echo -n "200" > /sys/devices/platform/i8042/serio1/serio2/rate
#/usr/bin/echo -n "6" > /sys/devices/platform/i8042/serio1/serio2/inertia

/usr/bin/systemd-cat -t "Trackpoint" /usr/bin/echo "***** MODIFYING TRACKPOINT ATTRIBUTES ON $(date) *****"
