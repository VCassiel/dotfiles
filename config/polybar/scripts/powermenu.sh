#!/usr/bin/env bash
#------------------------
#   POLYBAR :: POWERMENU
#------------------------

# :: Main

dir="$HOME/.config/rofi"
rofi_command="rofi -theme $dir/barmenu.rasi"

shutdown=""
reboot=""
lock=""
suspend=""
logout=""

options="$shutdown\n$reboot\n$suspend\n$lock\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu)"
case $chosen in
	$shutdown)
		systemctl poweroff
        ;;
	$reboot)
		systemctl reboot
        ;;
	$suspend)
        pamixer -m
        systemctl suspend
        ;;
	$lock)
        betterlockscreen -l dimblur
        ;;
	$logout)
		bspc quit
        ;;
esac
