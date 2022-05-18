#!/usr/bin/env bash

dir="~/.config/rofi/launchers/misc"
rofi_command="rofi -theme $dir/kde_krunner.rasi"
DIR=~/.config

draw-menu  () {
chosen="$(echo -e "$options" | $rofi_command -p "	Select Your Theme" -dmenu -selected-row 0)"
}

write() {
  
  TEN=temas/$1
  
  # Write new appeareance
  
  cat $DIR/alacritty/$TEN > $DIR/alacritty/colors.yml &
  cat $DIR/dunst/$TEN > $DIR/dunst/dunstrc &
  cat $DIR/gtk-3.0/$TEN > $DIR/gtk-3.0/settings.ini &
  cat $DIR/gtk-4.0/$TEN > $DIR/gtk-4.0/settings.ini &
  cat $DIR/rofi/$TEN > $DIR/rofi/config.rasi &
  cat $DIR/switcher/$TEN > $DIR/rofi/change.rasi &
  cat $DIR/polybar/$TEN > $DIR/polybar/launch.sh &
  echo "dunstify -i ~/.config/dunst/iconpng/$1.jpg 'Tema $1 correctamente aplicado' " > $DIR/scripts/enviroment/dunst.sh &
  echo "/home/sasaki/Imágenes/Wallpapers/$1" > $DIR/scripts/enviroment/path &
  echo "pkill -USR1 -x sxhkd;dunstify -i $HOME/.config/dunst/iconpng/$1.jpg SXHKDRC RECARGADO" > $DIR/scripts/enviroment/sxhkd.sh &
}

app (){

  # Kill process
  
  killall mpd-notification xfce4-panel plank dunst &
  
  # Apply
  
  bspc config bottom_padding 0 ; bspc config top_padding 0 &
  sleep 1 &
  $DIR/scripts/enviroment/dunst.sh &
  mpd-notification &
  pkill -USR1 -x sxhkd &
  bspc wm -r &
  ~/config/scripts/enviroment/betterlockscreen.sh &

}


