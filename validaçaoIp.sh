#!/usr/bin/bash
clear

read -p "Digite seu IP: " IP
echo $IP | grep -E '^([0-9]\.|[1-9][0-9]\.|1[0-9]{2}\.|2[0-4][0-9]\.|25[0-5]\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2{0-4}[0-9]|25[0-5]$'
if [[ $? -eq 0 ]]; then
	echo "IP valido"
else
	echo "IP Invalido"
fi
