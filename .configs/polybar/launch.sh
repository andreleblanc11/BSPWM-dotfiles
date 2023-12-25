#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# If all your bars have ipc enabled, you can use
polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar monitor1 -c ~/.config/polybar/config.ini | tee -a ~/.local/log/polybar/polybar.log & disown

# We also want to launch polybar on the other displays (on the docking station)
external_monitor1 = $(xrandr --query | grep 'DVI-I-1-1')
if [[ $external_monitor1 = *connected* ]]; then
	polybar monitor2 -c ~/.config/polybar/config.ini | tee -a ~/.local/log/polybar/polybar.log & disown
fi

external_monitor2 = $(xrandr --query | grep 'DVI-I-2-2')
if [[ $external_monitor2 = *connected* ]]; then
	polybar monitor3 -c ~/.config/polybar/config.ini | tee -a ~/.local/log/polybar/polybar.log & disown
fi


echo "Polybar launched..."
