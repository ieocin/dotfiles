#!/bin/bash
name=$(date +"%d-%m-%y_%H:%M:%S")
if [ "$1" == "-f" ]; then
	maim ~/Pictures/$name.png
else
	maim -s ~/Pictures/$name.png
fi

xclip -selection clipboard -t image/png ~/Pictures/$name.png
