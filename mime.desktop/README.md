First, symblink mime.list to ~/.config/ and ~/.local/share/application
Then symblink \*.desktop into ~./localshare/application
Might need to reboot the system

Check if mimetype is working correctly by using xdg-utils (xdg-mime)
`xdg-mime query default application/x-bittorrent`
`xdg-mime query filetype $path/to/file`
