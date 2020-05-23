volume=$(pamixer --get-volume)
[ $(pamixer --get-mute) = true ] && 
echo "$volume " || 
pamixer --get-volume | sed 's/$/ /'
