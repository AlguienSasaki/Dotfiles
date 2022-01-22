#!/usr/bin/env bash

dir="~/.config/polybar/blocks/scripts/rofi"
uptime=$(uptime -p | sed -e 's/up //g')
DIR="/home/alguien/.config/polybar"
rofi_command="rofi -theme $dir/powermenu.rasi"
PNT=";dunstify -i $HOME/.config/dunst/iconpng/arch.png"

# Options
gray="		Gray"
vap="		Vaporware"
#pink="		Pink"
nord="		Nord"
gruvb="		Gruvbox"
dark="		Dark"
aes="	     	Aesthetic"

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
options="$gray\n$vap\n$nord\n$gruvb\n$dark\n$aes"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $nord)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			bash ~/.config/scripts/appeareance/Nord
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			bash ~/.config/scripts/appeareance/Nord
			exit 0
        else
			msg
        fi
        ;;
    $gruvb)
		ans=$(confirm_exit &)
		if [[ $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
			bash ~/.config/scripts/appeareance/Gruvbox
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			bash ~/.config/scripts/appeareance/Gruvbox
			exit 0
        else
			msg
        fi
        ;;
    $dark)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Dark
		elif [[ -f /usr/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Dark
			a
		fi
        ;;
    $vap)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Vaporware
		elif [[ -f /usr/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Vaporware
		fi
        ;;
    $aes)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Aesthetic/Aspect.sh
		elif [[ -f /usr/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Aesthetic/Aspect.sh
		fi
        ;;

    $gray)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Gray
		elif [[ -f /usr/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Gray
		fi
        ;;
esac

