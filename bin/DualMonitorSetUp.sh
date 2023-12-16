#!/bin/bash

# Set up two monitors with bspwm
# The order that the monitor appears on xrandr determines its placement from the left side of the laptop monitor.

external_monitors=$(xrandr --query | grep 'DVI' | cut -d ' ' -f1)
count=0

for monitor in $external_monitors;
do
	echo $monitor
	count=$((count+1))
	if [[ $count == 1 ]]; then
 		xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output $monitor --mode 1920x1080 --rotate normal --left-of eDP-1
		monitor1=$monitor
	else
 		xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output $monitor --mode 2560x1440 --rotate normal --left-of $monitor1
	fi

done
