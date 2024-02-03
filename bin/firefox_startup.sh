#!/bin/bash
#
# Script to properly start/restart firefox with pywal theme setup.

if [[ $(ps aux | grep /usr/lib/firefox/firefox) ]]
then
	killall firefox
	sleep 2
	firefox &
else
	firefox &
fi

