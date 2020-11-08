#!/usr/local/bin/bash
#Download youtube via tridactly extension
#Depencies: ffmpeg, youtube-dl, xclip and tridactly
get='youtube-dl'
clip="$(xclip -sel clipboard -o)"
get_Title=$(youtube-dl --get-filename $clip)

#Ask user to confirm if they want to download this file

notify-send "Downloading $get_Title" && $get $clip && notify-send "Finished" || notify-send "Failed to Download"

#notify-send "Downloading $get_Title " && $get $clip && notify-send "Finished" || notify-send "Failed to Download"
