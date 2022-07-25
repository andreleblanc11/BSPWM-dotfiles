#!/bin/bash

# Set up two monitors with bspwm

external_monitor = $(xrandr --query | grep 'HDMI-2')

if [[ $external_monitor = *connected* ]];then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output HDMI-2 --mode 1920x1080 --rotate normal --right-of eDP-1
fi

