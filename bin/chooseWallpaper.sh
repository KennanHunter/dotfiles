#/bin/bash
selection=$(echo -e "cat\nrandom wallpaper\nlewd\ncute\ncool\nsquare" | rofi -dmenu)

case $selection in
"cat")
	~/bin/update_wallpaper.sh ~/Pictures/special/catwindowsill.jpg
	;;

"lewd")
	~/bin/chooseSubmenu.sh ~/Pictures/anime/lewd/
	;;

"random wallpaper")
	~/bin/update_wallpaper.sh ~/Pictures/wallpapers/
	;;

"cute")
	~/bin/chooseSubmenu.sh ~/Pictures/anime/cute/
	;;

"square")
	~/bin/chooseSubmenu.sh ~/Pictures/anime/square/
	;;

"cool")
	~/bin/chooseSubmenu.sh ~/Pictures/anime/cool/
	;;

"*")
	notify-send "wallpaper" "unknown choice"
	;;
esac
