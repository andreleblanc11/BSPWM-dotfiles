#!/bin/bash
#
# Script to properly start/restart firefox with pywal theme setup.

if [[ $(ps aux | grep /usr/lib/firefox/firefox) ]]
then
	killall firefox
	firefox &
else
	firefox &
fi

