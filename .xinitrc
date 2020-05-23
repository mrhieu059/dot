#!/bin/sh
sxhkd &
dunst &
picom &
mpd &
feh --no-fehbg --bg-scale '/home/cinux/.config/wall.png'
transmission-daemon &
#dwmblocks &
xinput disable 10
polybar custombar &
redshift -c ~/.config/redshift/redshift.conf &
exec bspwm
#while true
#do
#	ssh-agent dwm 
#done
