#!/usr/bin/env bash

dir="~/.config/polybar/blocks/scripts/rofi"
rofi_command="rofi -theme $dir/powermenu.rasi"

theme () {
  DIR=~/.config
  TEN=temas/$1

  # Write new appeareance
  
  cat $DIR/alacritty/$TEN > $DIR/alacritty/alacritty.yml &
  cat $DIR/dunst/$TEN > $DIR/dunst/dunstrc &
  cat $DIR/gtk-3.0/$TEN > $DIR/gtk-3.0/settings.ini &
  cat $DIR/polybar/$2/launch.sh > $DIR/polybar/launch.sh &
  cat $DIR/rofi/$TEN > $DIR/rofi/config.rasi &
  echo "dunstify -i ~/.config/dunst/iconpng/Gray.jpg 'Tema Gray correctamente aplicado' " > $DIR/scripts/dunst.sh &
  echo "feh --bg-fill --randomize ~/Imágenes/Fondos\ de\ escritorio/$1" > $DIR/scripts/wal.sh &
  
  # Kill process
  
  killall mpd-notification dunst xfce4-panel plank &
  
  # Apply
  
  bspc config bottom_padding 0 ; bspc config top_padding 0 &
  bspc wm -r &
  pkill -USR1 -x sxhkd &
  $DIR/scripts/dunst.sh &

}

# Availabe themes

gray="		Graveyard"
vap="		Vaporware"
#pink="		Pink"
nord="		Nordic"
gruvb="		Gruvbox"
dark="		Dark"
aes="	     	Aesthetic"
cap="		Catppuccin"

# Variable passed to rofi

options="$aes\n$cap\n$gray\n$gruvb\n$nord\n$vap\n$dark"

chosen="$(echo -e "$options" | $rofi_command -p "	Select Your Theme" -dmenu -selected-row 0)"
case $chosen in
    $nord)
		if [[ -f/bin/bash ]]; then		
			theme Nord blocks &&  ~/config/polybar/blocks/scripts/styles.sh --default & 
        fi
        ;;
    $gruvb)
		if [[ -f/bin/bash ]]; then
			theme Gruvbox blocks &&  ~/config/polybar/blocks/scripts/styles.sh --gruvbox &
		fi
        ;;
    $dark)
		if [[ -f/bin/bash ]]; then
			theme Dark bspwmbdarch 
		fi
        ;;
    $vap)
		if [[ -f/bin/bash ]]; then
			theme Vaporware forest 
		fi
        ;;
     $aes)
		if [[ -f/bin/bash ]]; then
			bash ~/.config/scripts/appeareance/Aesthetic/Aspect.sh
		fi
        ;;

    $cap)
		if [[ -f/bin/bash ]]; then
			theme catppuccin shapes 
		fi
        ;;

    $gray)
		if [[ -f/bin/bash ]]; then
			theme Graveyard murz
		fi
        ;;
esac

