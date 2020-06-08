#!/bin/bash
#if [ -z "$(pacman -Qs nordvpn)" ]
#then
#	echo "VPN " 
#else
#	vpn_Status="$(nordvpn status | grep Connected | xargs | cut -d ' ' -f4)"
#	if [ "$vpn_Status" = 'Connected' ]
#	then
#		nordvpn status | grep Country | cut -d ':' -f2- | xargs | sed 's/$/ /' || echo "VPN " 
#	else
#		echo "VPN  "
#	fi
#fi

status=$(nmcli con show --active | grep vpn)

if [ $? -eq 0 ]
then
	echo "ON "
else
	echo "OFF "
fi
