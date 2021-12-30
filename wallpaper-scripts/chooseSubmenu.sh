#/bin/bash

cd $1
selection=$(echo -e "cancel\n$(fd .)" | rofi -dmenu)

~/bin/update_wallpaper.sh "$1/$selection" 
