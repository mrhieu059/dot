#!/bin/bash
#movie_path=$(find ~/.local -name "*.mp4" | sed 's/^.\//\/home\/cinux\//g; s/^/\"/; s/$/\"/')
movsel()
{
	movie_path=$(find "/home/cinux/" -name "*.mp4" -o -name "*.mkv" | sed 's/^.\//\/home\/cinux\//g; s/^/\"/; s/$/\"/' | grep -v Trash)

	echo "$movie_path" > /tmp/movielist.txt
	count=$(wc -l < /tmp/movielist.txt)
	movie_chose=$(cat /tmp/movielist.txt | dmenu -c -i -l $count | xargs)
	echo $movie_chose
}
#echo $(movsel)
mpv "$(movsel)"
