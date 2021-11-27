#/bin/bash

cd $1
selection=$(fd  . | rofi -dmenu)

~/bin/update_wallpaper.sh "$1/$selection" 
