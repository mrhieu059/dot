#!/bin/bash
if [ -z "$(pacman -Qs nordvpn)" ]
then
	echo "VPN " 
else
	vpn_Status="$(nordvpn status | grep Connected | xargs | cut -d ' ' -f4)"
	if [ "$vpn_Status" = 'Connected' ]
	then
		nordvpn status | grep Country | cut -d ':' -f2- | xargs | sed 's/$/ /' || echo "VPN " 
	else
		echo "VPN  "
	fi
fi
