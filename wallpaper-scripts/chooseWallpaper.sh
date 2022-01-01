#/bin/bash
selection=$(echo -e "favorite\nrandom wallpaper\nlewd\nrandom meh\nspecific meh\nportrait\nlinus" | rofi -dmenu)

case $selection in
"favorite")
	~/bin/chooseSubmenu.sh ~/Pictures/anime/AnimeBackgrounds/favorites/
	;;

"lewd")
	~/bin/chooseSubmenu.sh ~/Pictures/anime/AnimeBackgrounds/slightlylewd/
	;;

"random wallpaper")
	~/bin/update_wallpaper.sh ~/Pictures/wallpapers
	;;

"random meh")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/good/
	;;

"specific meh")
	~/bin/chooseSubmenu.sh ~/Pictures/anime/AnimeBackgrounds/good/
	;;

"portrait")
	~/bin/update_wallpaper.sh ~/Pictures/lambda-wallpapers/portrait/
	;;

"linus")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/favorites/linus.jpg
	;;

"*")
	notify-send "wallpaper" "unknown choice"
	;;
esac
