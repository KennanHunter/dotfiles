#/bin/bash
selection=$(echo -e "favorite\nrandom wallpaper\nlewd\nrandom meh\nportrait\nkeyboards\npool\ncatgirls\nno clue\nback\nplease fucking kill me\nround glasses\nlinus\nrem" | rofi -dmenu)

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

"portrait")
	~/bin/update_wallpaper.sh ~/Pictures/lambda-wallpapers/portrait/
	;;

"pool")
	 ~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/slightlylewd/pool.png
	 ;;

"please fucking kill me")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/favorites/literallysofuckingcutepleasekillme.png
	;;
	
"no clue")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/slightlylewd/nocluebutcute.jpg
	;;

"round glasses")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/favorites/roundglassesgivedopamine.jpg
	;;
"catgirls")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/slightlylewd/catgirls.jpeg
	;;

#"that one lewd one")
#	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/slightlylewd/thatonelewdone.png
#	;;

"keyboards")
	~/bin/update_wallpaper.sh ~/Pictures/wallpapers/keyboards.jpeg
	;;

"linus")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/favorites/linus.jpg
	;;

"rem")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/favorites/rem.png
	;;

"back")
	~/bin/update_wallpaper.sh ~/Pictures/anime/AnimeBackgrounds/slightlylewd/back.jpg
	;;

"*")
	notify-send "wallpaper" "unknown choice"
	;;
esac
