#!/bin/sh
#Download youtube via tridactly extension
#Depencies: ffmpeg, youtube-dl, xclip and tridactly
get='youtube-dl'
clip="$(xclip -sel clipboard -o)"
get_Title=$(youtube-dl --get-filename $clip)

#Ask user to confirm if they want to download this file
user_Confirm="$(echo "Do you want to download this file? $get_Title" | dmenu)"
case $user_Confirm in
	yes)
		notify-send "Downloading $get_Title" && $get $clip && notify-send "Finished" || notify-send "Failed to Download"
		;;
	no)
		notify-send "Cancelling"
		break
		;;
esac

#notify-send "Downloading $get_Title " && $get $clip && notify-send "Finished" || notify-send "Failed to Download"
