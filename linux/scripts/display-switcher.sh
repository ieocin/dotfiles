#!/bin/bash
last=$(cat ~/.config/scripts/lastlayout)
if [[ $1 == "startup" ]]; then
	~/.screenlayout/$last.sh
	exit
fi

if [[ $last == "tv" ]]; then
	echo desktop > ~/.config/scripts/lastlayout
else
	echo tv > ~/.config/scripts/lastlayout
fi

bspc quit
