#!/usr/bin/env bash

if [ -z "$(lsusb | grep Yubikey)" ] ; then
	/bin/su srsantos -c /usr/local/bin/yubikey_removed_lock.sh
fi

exit
