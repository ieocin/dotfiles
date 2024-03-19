#!/bin/zsh
name=$(date +"%d-%m-%y_%H:%M:%S")

if [[ $XDG_SESSION_TYPE == "wayland" ]]; then
	if [[ "$1" == "-f" ]]; then
		echo a
		wayshot -s -f ~/Pictures/$name.png -c
	else
		wayshot -f ~/Pictures/$name.png -c
	fi
	wl-copy < ~/Pictures/$name.png
else
	if [[ "$1" == "-f" ]]; then
		maim ~/Pictures/$name.png
	else
		maim -s ~/Pictures/$name.png
	fi
	xclip -selection clipboard -t image/png ~/Pictures/$name.png
fi
