#!/usr/bin/bash
server_List="Africa_The_Middle_East_And_India\nDedicated_IP\nEurope\nStandard_VPN_Servers\nAsia_Pacific\nDouble_VPN\nP2P\nThe_Americas\n
"
server=$(echo -e "$server_List" | dmenu -i -c -l 8)
#dmenu_List=$(dmenu -c < $server)
#echo $server
#notify-send "Connecting $server" ; 
nordvpn c --group $server
#alacritty &
