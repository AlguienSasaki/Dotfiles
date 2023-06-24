#!/usr/bin/env bash

source $HOME/config/scripts/appeareance/General-Options.sh

theme (){
  write $1 & 
}

mdrn-theme () {

  TEN=temas/Modern/$1
  killall polybar &
  plank &
  xfce4-panel &
  bspc config bottom_padding 65 ; bspc config top_padding 22 &
  
}

apply (){
  theme Modern/$1 && killall polybar && sleep 0.5 && mdrn-theme $1 &
}


# Availabe themes

mac="		MacOS"
win="		Win"
gnm="		Gnome"


# Variable passed to rofi

options="$mac\n$gnm\n$win"

draw-menu
case $chosen in
    $mac)
			killall polybar && apply Mac && killall polybar &
        ;;
    $gnm)
			apply Blue 	
        ;;
    $cap)
			apply Cappuccino 
        ;;
esac
