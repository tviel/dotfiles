#!/bin/bash

status=$(nmcli g | grep -oE "disconnected")
essid=$(nmcli c | grep wlp41s0 | awk '{print ($1)}')
ip=$(ip -f inet -o address | grep wlp41s0 | awk '{print $4}' | sed s#/24##)

if [ $status ] ; then
    icon="睊"
    text="--"
    ip=""
    stat=0

else
    icon=""
    text="${essid}"
    ip="${ip}"
    stat=1
fi



if [[ "$1" == "--ICON" ]]; then
    echo $icon	
elif [[ "$1" == "--ESSID" ]]; then
	echo $text
elif [[ "$1" == "--STATUS" ]]; then
	echo $stat
elif [[ "$1" == "--IP" ]]; then
	echo $ip
fi
