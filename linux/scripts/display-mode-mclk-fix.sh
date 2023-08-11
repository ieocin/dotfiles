#!/bin/sh
xrandr --newmode "MCLK-fix" 333.22  1920 1928 1960 2000  1080 1143 1151 1157 +hsync -vsync
xrandr --addmode DisplayPort-1 "MCLK-fix"
xrandr --output DisplayPort-1 --mode MCLK-fix
