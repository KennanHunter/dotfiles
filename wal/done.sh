#!/bin/sh
pywal-discord
pywalfox update

mkdir -p  "${HOME}/.config/dunst"
ln -sf    "${HOME}/.cache/wal/dunstrc"    "${HOME}/.config/dunst/dunstrc"

pkill dunst
dunst &
