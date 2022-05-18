#!/bin/sh

if xrandr -q | grep 'HDMI-A-0 connected'; then
xrandr --output HDMI-A-0 --mode 1920x1080 --right-of eDP
bspc monitor eDP -d I IV V VII
bspc monitor HDMI-A-0 -d I II III VI VIII
else
bspc monitor eDP -d I II III IV V VI VII VIII
fi
xrandr --output eDP --mode 1920x1080
