#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# If all your bars have ipc enabled, you can use
polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar monitor1 -c ~/.config/polybar/config.ini | tee -a /tmp/polybar.log & disown

external_monitor = $(xrandr --query | grep 'HDMI-2')
if [[ $external_monitor = *connected* ]]; then
	polybar monitor2 -c ~/.config/polybar/config.ini | tee -a /tmp/polybar.log & disown
fi

echo "Polybar launched..."
