#!/bin/bash
last=$(cat ~/.config/scripts/lastlayout)
if [[ $1 == "startup" ]]; then
	~/.screenlayout/$last-kscreen.sh
	plasmashell --replace & disown
	exit
fi

if [[ $last == "tv" ]]; then
	echo desktop > ~/.config/scripts/lastlayout
else
	echo tv > ~/.config/scripts/lastlayout
fi

qdbus org.kde.Shutdown /Shutdown logout
