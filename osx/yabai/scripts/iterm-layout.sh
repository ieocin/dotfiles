#!/bin/sh
osascript -e 'tell application "iTerm2" to activate' -e 'tell application "iTerm2" to create window with default profile' -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh nc@192.168.2.220 -p 2222 -t \"htop\""' -e 'tell application "System Events" to tell process "iTerm" to key code 52'
yabai -m window --move abs:25:110
yabai -m window --resize abs:590:480

osascript -e 'tell application "iTerm2" to activate' -e 'tell application "iTerm2" to create window with default profile' -e 'tell application "System Events" to tell process "iTerm" to keystroke "unimatrix -s 97 -f -a -c black"' -e 'tell application "System Events" to tell process "iTerm" to key code 52'
yabai -m window --resize abs:490:250
yabai -m window --move abs:625:110

osascript -e 'tell application "iTerm2" to activate' -e 'tell application "iTerm2" to create window with default profile' -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh nc@192.168.2.220 -p 2222 -t \"./log-monitor.sh /var/log/nginx/access.log\""' -e 'tell application "System Events" to tell process "iTerm" to key code 52'
yabai -m window --resize abs:575:250
yabai -m window --move abs:860:370

osascript -e 'tell application "iTerm2" to activate' -e 'tell application "iTerm2" to create window with default profile' -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh nc@192.168.2.220 -p 2222 -t \"./log-monitor.sh /var/log/auth.log\""' -e 'tell application "System Events" to tell process "iTerm" to key code 52'
yabai -m window --resize abs:575:310
yabai -m window --move abs:860:630

osascript -e 'tell application "iTerm2" to activate' -e 'tell application "iTerm2" to create window with default profile' -e 'tell application "System Events" to tell process "iTerm" to keystroke "ssh nc@192.168.2.220 -p 2222 -t \"sudo ./fail2ban-monitor.sh\""' -e 'tell application "System Events" to tell process "iTerm" to key code 52'
yabai -m window --resize abs:490:270
yabai -m window --move abs:362:600
