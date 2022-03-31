if [ -z $(ps aux | grep picom | grep -v grep) ]; then
    picom --experimental-backends & disown
    ffplay -nodisp -autoexit /usr/share/sounds/freedesktop/stereo/device-removed.oga
else
    pkill picom
    ffplay -nodisp -autoexit /usr/share/sounds/freedesktop/stereo/device-added.oga
fi
