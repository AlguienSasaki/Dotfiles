#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/applets/android"
rofi_command="rofi -theme $dir/six.rasi"

# Gets the current status of mpd (for us to parse it later on)
status="$(mpc status)"
# Defines the Play / Pause option content
if [[ $status == *"[playing]"* ]]; then
    play_pause=""
else
    play_pause=""
fi
active=""
urgent=""

next=""
previous=""

# Variable passed to rofi
options="$previous\n$play_pause\n$next"

# Get the current playing song
current=$(mpc -f %title% current)
# If mpd isn't running it will return an empty string, we don't want to display that
if [[ -z "$current" ]]; then
    current="-"
fi

# Spawn the mpd menu with the "Play / Pause" entry selected by default
chosen="$(echo -e "$options" | $rofi_command -p "  $current" -dmenu $active $urgent -selected-row 1)"
case $chosen in
    $previous)
        mpc -q prev && notify-send -u low -t 1800 " $(mpc current)"
        ;;
    $play_pause)
        mpc -q toggle && notify-send -u low -t 1800 " $(mpc current)"
        ;;
    $next)
        mpc -q next && notify-send -u low -t 1800 " $(mpc current)"
        ;;
esac
