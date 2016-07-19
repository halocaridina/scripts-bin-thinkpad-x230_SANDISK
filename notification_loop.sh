#!/usr/bin/env bash

while true; do
    /usr/bin/sleep 300
    /usr/local/bin/pac_pruning.sh
    /usr/bin/sleep 600
    /usr/local/bin/update_arch_notification.sh
    /usr/bin/sleep 300
    /usr/local/bin/update_aur_notification.sh
    /usr/bin/sleep 7200
done
