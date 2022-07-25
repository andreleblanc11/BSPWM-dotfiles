#!/bin/bash

# Toggle between canadian french and us english languages

current_language=$(setxkbmap -query | grep -w 'layout')

if [[ $current_language = *us* ]];then
	setxkbmap ca && localectl set-x11-keymap ca && localectl set-keymap ca
elif [[ $current_language = *ca* ]];then
	setxkbmap us && localectl set-keymap us
fi
