#!/bin/sh
transmission-remote -a "$@" >~/.trans.log ; notify-send "Adding torrent $@"
