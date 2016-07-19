#!/usr/bin/env bash

PID=$(pidof -s /usr/bin/openconnect)
PID_FILE=/tmp/openconnect_vpn.lock

if [ "$PID" -ne 0 &>/dev/null ]; then
   touch $PID_FILE && echo "1" > $PID_FILE
else
   rm -f $PID_FILE
fi
sleep 5
exit
