 #!/usr/bin/env bash

res=$(rofi -dmenu -lines 6 -columns 3 -u 2-5 -font "Roboto Mono for Powerline Regular 20" -p " " -input < ~/.i3/rofi-i3exit.opts)

if [[ $res = "LOCK SCREEN" ]]; then
    xset dpms force off
fi
if [[ $res = "LOGOUT TO TTY" ]]; then
		if [ "$(pidof i3)" ]; then
			pkill -f xss-lock & pkill -f bash & pkill -f gpg-agent & rm -f /tmp/touchpad_toggled* /tmp/screen_lock_toggled_off.lock /tmp/openconnect_vpn.lock & i3-msg exit
		  else
			rm -f /tmp/touchpad_toggled* /tmp/screen_lock_toggled_off.lock & herbstclient quit
		fi
fi
if [[ $res = "SUSPEND TO RAM" ]]; then
    systemctl suspend
fi
if [[ $res = "HIBERNATE TO DISK" ]]; then
    systemctl hibernate
fi
if [[ $res = "REBOOT" ]]; then
    systemctl reboot
fi
if [[ $res = "SHUTDOWN" ]]; then
    systemctl poweroff
fi
exit 0
