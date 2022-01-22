#!/usr/bin/env bash

dir="~/.config/polybar/blocks/scripts/rofi"
uptime=$(uptime -p | sed -e 's/up //g')
DIR="/home/alguien/.config/polybar"
rofi_command="rofi -theme $dir/powermenu.rasi"
PNT=";dunstify -i $HOME/.config/dunst/iconpng/arch.png"

# Options
ap="	     	Pink"

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
options="$ap"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $ap)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Aesthetic/Pink
		elif [[ -f /usr/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Aesthetic/Pink
			a
		fi
        ;;
esac

