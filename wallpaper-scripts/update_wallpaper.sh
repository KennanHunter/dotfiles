#!/usr/bin/bash
echo "setting wallpaper to $1"

if [ -d "$1" ]; then
	random=$(find $1 -type f | shuf -n 1)
	echo "setting wallpaper to $random"
	notify-send -t 2000 "Changing Background" "$random"
	wal -i "$random" --saturate 0.3
	betterlockscreen -u "$random" --fx dim
	exec /home/kennan/.config/wal/done.sh
elif [ -f "$1" ]; then
	echo "setting wallpaper to $1"
	notify-send -t 2000 "Changing Background" "$1"
	wal -i "$1" --saturate 0.3
	betterlockscreen -u "$1" --fx dim
	exec /home/kennan/.config/wal/done.sh
else
	echo "please provide either a file or directory"
	notify-send -t 4000 "Changing Background" "Please provide a file or directory"
fi
