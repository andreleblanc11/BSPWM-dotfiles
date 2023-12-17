#!/bin/bash

# Set up two monitors with bspwm
# The order that the monitor appears on xrandr determines its placement from the left side of the laptop monitor.
#

external_monitors=$(xrandr --query | grep 'DVI' | cut -d ' ' -f1)

if [[ $external_monitors == *"DVI-I-1-1"* ]]; then
xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output "DVI-I-1-1" --mode 1920x1080 --rotate normal --left-of eDP-1
fi

if [[ $external_monitors == *"DVI-I-2-2"* ]]; then
xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output "DVI-I-2-2" --mode 2560x1440 --rotate normal --left-of "DVI-I-1-1"
fi
