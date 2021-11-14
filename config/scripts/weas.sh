#!/bin/bash

mpd &
picom --experimental-backends &
dunst &
~/.config/scripts/appeareance/wal.sh &
mpd & 
killall mpd-notification ; mpd-notification &
setxkbmap latam basic &
~/.config/polybar/launch.sh &
