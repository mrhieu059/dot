#!/bin/bash
#movie_path=$(find ~/.local -name "*.mp4" | sed 's/^.\//\/home\/cinux\//g; s/^/\"/; s/$/\"/')
movie_path=$(find "/home/cinux/" -name "*.mp4" | sed 's/^.\//\/home\/cinux\//g; s/^/\"/; s/$/\"/')

echo "$movie_path" > /tmp/movielist.txt
count=$(wc -l < /tmp/movielist.txt)
movie_chose=$(cat /tmp/movielist.txt | dmenu -c -l $count | xargs)

mpv "$movie_chose"
