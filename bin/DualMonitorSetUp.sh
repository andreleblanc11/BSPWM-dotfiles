#!/bin/bash

# Set up two monitors with bspwm
# The order that the monitor appears on xrandr determines its placement from the left side of the laptop monitor.
#
# Functions
#
# 	monitor_add
# 	Add both monitors only when single laptop screen is connected to docking station.
#
# 	monitor_remove
# 	When switching back to single laptop screen, remove both desktops from BSPWM and from xrandr
#
# Usage
#
# 	DualMonitorSetUp.sh $monitor1 $monitor2


if [[ $(echo $#) < 2 ]]
then
	echo -e "Need more arguments."
	echo -e "Usage: DualMonitorSetUp.sh monitor1 monitor2"
	exit 1
fi

# Setup global variables
monitor1=$1
monitor2=$2

monitor_add() {
	
	external_monitor1=$(xrandr --query | grep -A1 $monitor1 | tail -n1 | cut -d 'x' -f1)
	external_monitor2=$(xrandr --query | grep -A1 $monitor2 | tail -n1 | cut -d 'x' -f1)
	
	# Whichever detected monitor is on 2560x1440, should be setup second
	if [[ $external_monitor1 > $external_monitor2 ]]; then
	
		xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output "$monitor2" --mode 1920x1080 --rotate normal --left-of eDP-1
		xrandr --output "$monitor1" --mode 2560x1440 --rotate normal --left-of "$monitor2"
	
	else
		xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output "$monitor1" --mode 1920x1080 --rotate normal --left-of eDP-1
		xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output "$monitor2" --mode 2560x1440 --rotate normal --left-of "$monitor1"
	
	fi
}

monitor_remove() {
    # First, we add a sort of temporary desktop to the external monitor.
    # You see, we can't just immediately move our desktops back to the
    # the first monitor because bspwm doesn't allow monitors without a
    # desktop. If a desktop is the only desktop on a monitor, you cannot
    # move it another.

    for desktop in $(bspc query -D -m $monitor1)
    do
        bspc desktop $desktop --to-monitor eDP-1
    done

    for desktop in $(bspc query -D -m $monitor2)
    do
        bspc desktop $desktop --to-monitor eDP-1
    done

    
    # Then, we can remove the monitor entirely:
    bspc monitor $monitor1 --remove &> /dev/null
    bspc monitor $monitor2 --remove &> /dev/null
    #
    # Lastly, we turn off the monitor:
    xrandr --output $monitor1 --off
    xrandr --output $monitor2 --off
}


if [[ ! $(xrandr | grep "DVI.*disconnected") ]]
then
	monitor_add
else
	monitor_remove
fi
