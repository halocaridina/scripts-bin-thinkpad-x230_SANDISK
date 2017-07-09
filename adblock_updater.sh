#!/usr/bin/env bash

export XAUTHORITY=/home/srsantos/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

if ! [ "`ping -4 -c 1 google.com`" ]; then
    /usr/bin/systemd-cat -t "Fanboy_Adblock" /usr/bin/echo "***** Currently offline. Will check for updated Fanboy adblock list later... *****"
else
    wget --quiet https://www.fanboy.co.nz/r/fanboy-ultimate.txt --output-document=/home/srsantos/.local/share/luakit/adblock/fanboy-ultimate.txt
    /usr/bin/systemd-cat -t "Fanboy_Adblock" /usr/bin/echo "***** FANBOY ADBLOCK LIST FOR LUAKIT UPDATED ON $(date) *****"
fi
exit 0
