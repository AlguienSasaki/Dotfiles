#!/usr/bin/env bash

dir="~/.config/polybar/blocks/scripts/rofi"
rofi_command="rofi -theme $dir/powermenu.rasi"
DIR=~/.config

draw-menu  () {
chosen="$(echo -e "$options" | $rofi_command -p "	Select Your Theme" -dmenu -selected-row 0)"
}

theme () {
  
  TEN=temas/$1
  
  # Write new appeareance
  
  cat $DIR/alacritty/$TEN > $DIR/alacritty/alacritty.yml &
  cat $DIR/dunst/$TEN > $DIR/dunst/dunstrc &
  cat $DIR/gtk-3.0/$TEN > $DIR/gtk-3.0/settings.ini &
  cat $DIR/rofi/$TEN > $DIR/rofi/config.rasi &
  echo "dunstify -i ~/.config/dunst/iconpng/$1.jpg 'Tema $1 correctamente aplicado' " > $DIR/scripts/dunst.sh &
  echo "feh --bg-fill --randomize ~/Imágenes/Fondos\ de\ escritorio/$1" > $DIR/scripts/wal.sh &
  
  # Kill process
  
  killall mpd-notification dunst xfce4-panel plank &
  
  # Apply
  
  bspc config bottom_padding 0 ; bspc config top_padding 0 &
  bspc wm -r &
  pkill -USR1 -x sxhkd &
  $DIR/scripts/dunst.sh &
  mpd-notification &

}

