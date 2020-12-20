#!/bin/sh

if pgrep -x openvpn >/dev/null
then
	notify-send -t 2000 "Turning off VPN"
	pkill qbittorrent
	pkill openvpn
else
	openvpn /etc/openvpn/nordvpn.conf & 
	notify-send -t 2000 "Turning on OpenVPN"
fi
