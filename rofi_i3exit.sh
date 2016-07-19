 #!/usr/bin/env bash

res=$(rofi -dmenu -lines 5 -u 2-4 -p "What do you want to do? " -input < ~/.i3/rofi-i3exit.opts)

if [[ $res = "LOCK SCREEN" ]]; then
    xset dpms force off
fi
if [[ $res = "SUSPEND TO RAM" ]]; then
    systemctl suspend
fi
if [[ $res = "LOGOUT TO TTY" ]]; then
    pkill -f xss-lock && pkill -f sleep && pkill -f vpn_pid_checker && killall notification_loop.sh && rm -f /tmp/screen_lock_toggled_off.lock /tmp/openconnect_vpn.lock && i3-msg exit
fi
if [[ $res = "REBOOT" ]]; then
    systemctl reboot
fi
if [[ $res = "SHUTDOWN" ]]; then
    systemctl poweroff
fi
exit 0
