#!/bin/sh
iw wlp3s0 link | grep SSID | cut -d ' ' -f2- | sed 's/$/ /'
#ip route | tail -n 1 | cut -d ' ' -f1

