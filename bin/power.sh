#/bin/bash
selection=$(echo -e "shutdown\nreboot" | rofi -dmenu)

case $selection in
"shutdown")
	shutdown now 
	;;

"reboot")
    reboot
    ;;

"*")
	notify-send "power" "unknown choice"
	;;
esac
