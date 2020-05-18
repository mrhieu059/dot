#!/bin/sh
dunst &
picom &
mpd &
feh --no-fehbg --bg-scale '/home/cinux/.config/wall.png'
dwmblocks &
xinput disable 10
while true
do
	ssh-agent dwm 
done
