#!/bin/bash
SOUND_FILE=/usr/share/sounds/freedesktop/stereo/audio-volume-change.oga
PLAY_CMD=$(ffplay -nodisp -autoexit "${SOUND_FILE}")
if [ "${1}" == 'up' ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +10% && ${PLAY_CMD}
elif [ "${1}" == 'down' ]; then
    pactl set-sink-volume @DEFAULT_SINK@ -10% && ${PLAY_CMD}
fi
