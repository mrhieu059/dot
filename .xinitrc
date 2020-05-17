#!/bin/sh
dunst &
picom &
mpd &
feh --no-fehbg --bg-scale '/home/cinux/dot/wals/stretched-1366-768-89317.png'
dwmblocks &
xinput disable 10
while true
do
	ssh-agent dwm 
done
