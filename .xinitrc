#!/bin/sh
#sxhkd &
dunst &
picom &
mpd &
feh --bg-scale ~/.config/wall.png &
#polybar custombar &
xinput disable 10 &
transmission-daemon &
dwmblocks &
xmodmap ~/.config/.xmodmap
while true
do
	ssh-agent dwm
done
