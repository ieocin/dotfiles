#!/bin/bash
if [[ $1 == "120hz" ]]
then
	xrandr --output HDMI-A-0 --mode 2560x1440 -r 120 --scale 0.7x0.7 --left-of DisplayPort-1 --primary
	xrandr --output DisplayPort-1 --off
	xrandr --output HDMI-A-1-1 --off
	exit
fi
if [[ $1 == "60hz" ]]
then
	xrandr --output HDMI-A-0 --mode 4096x2160 --scale 0.45x0.45 --left-of DisplayPort-1 --primary
	xrandr --output DisplayPort-1 --off
	xrandr --output HDMI-A-1-1 --off
	exit
fi


if [[ $1 == "rotate" ]]
then
	xrandr --output DisplayPort-1 --mode "MCLK-fix" --scale 1.0x1.0 --pos 0x0 --output HDMI-A-1-1 --mode 1920x1080 -r 75 --pos 1920x-1100 --rotate left
	exit
elif [[ $1 == "normal" ]]
then
	xrandr --output DisplayPort-1 --mode "MCLK-fix" --scale 1.0x1.0 --pos 0x0 --output HDMI-A-1-1 --mode 1920x1080 -r 75 --pos 1920x-800 --rotate normal
	exit
fi


if [[ $(xrandr --listactivemonitors) == *"DisplayPort-1"* ]]
then
	xrandr --output HDMI-A-0 --mode 4096x2160 --scale 0.45x0.45 --left-of DisplayPort-1 --primary
	xrandr --output DisplayPort-1 --off
	xrandr --output HDMI-A-1-1 --off
	
	if [[ $1 == "steam" ]]
	then
		steam steam://open/bigpicture &
       	fi
else
	xrandr --output DisplayPort-1 --mode "MCLK-fix" --scale 1.0x1.0 --pos 0x0 --output HDMI-A-1-1 --mode 1920x1080 -r 75 --pos 1920x-800
	xrandr --output HDMI-A-0 --off
	
	if [[ $1 == "steam" ]]
	then
		steam steam://close/bigpicture &
	fi
fi
