#!/usr/bin/env bash

dir="~/.config/polybar/blocks/scripts/rofi"
uptime=$(uptime -p | sed -e 's/up //g')
DIR="/home/alguien/.config/polybar"
rofi_command="rofi -theme $dir/powermenu.rasi"
PNT=";dunstify -i $HOME/.config/dunst/iconpng/arch.png"

# Options
nord="Nord"
gruvb="Gruvbox"
dark="Dark"
pink="Pink"
mac="Mac OS Clone" 
vap="Vaporware"
manj="Manjaro"


# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $dir/confirm.rasi
}

# Message
msg() {
	rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

# Variable passed to rofi
options="$dark\n$pink\n$mac\n$gruvb\n$nord\n$vap\n$manj"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $nord)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			bash ~/.config/scripts/Nord
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $gruvb)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			bash ~/.config/scripts/Gruvbox
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $dark)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/Dark
		elif [[ -f /usr/bin/bash ]]; then
			a
		fi
        ;;
    $vap)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/Vaporware
		elif [[ -f /usr/bin/bash ]]; then
			bash ~/.config/scripts/Vaporware
		fi
        ;;
    $pink)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			bash ~/.config/scripts/Pink	
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $mac)
	      ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			bash ~/.config/scripts/Mac 
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0

			exit 0
        else
			msg
        fi
        ;;
    $manj)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/Manjaro
		elif [[ -f /usr/bin/bash ]]; then
			bash ~/.config/scripts/Manjaro
		fi
        ;;
esac
