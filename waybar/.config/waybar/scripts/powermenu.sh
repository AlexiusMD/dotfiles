#!/bin/bash

choice=$(printf "Lock\nLogout\nReboot\nShutdown" | wofi --dmenu --prompt "Power Menu")

case "$choice" in
	Lock)
		hyprlock 
		;;
	Logout)
		hyprctl dispatch exit
		;;
	Reboot)
		systemctl reboot
		;;
	Shutdown)
		systemctl poweroff
		;;
esac
