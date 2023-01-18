#!/usr/bin/env bash

/usr/bin/systemd-cat -t "wifi_led_via_netdev" /usr/bin/echo "***** SETTING WIFI LED UP ON $(date) *****"
/usr/bin/echo netdev | tee /sys/class/leds/phy0-led/trigger
/usr/bin/echo wlp3s0 | tee /sys/class/leds/phy0-led/device_name
/usr/bin/echo 1 | tee /sys/class/leds/phy0-led/link
/usr/bin/echo 1 | tee /sys/class/leds/phy0-led/tx
/usr/bin/echo 1 | tee /sys/class/leds/phy0-led/rx
/usr/bin/systemd-cat -t "wifi_led_via_netdev" /usr/bin/echo "*****  COMPLETED WIFI LED CONFIG ON $(date) *****"

