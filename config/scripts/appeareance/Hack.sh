#!/usr/bin/env bash

source $HOME/config/scripts/appeareance/General-Options.sh

theme (){
  write Hack/$1 && app
}

hack-theme () {
  cat $DIR/polybar/bspwmbdarch/temas/Hack/$1 > $DIR/polybar/bspwmbdarch/colors.ini &
}

apply (){
hack-theme $1 && theme $1
}

# Availabe themes

red="		Blood"
bu="		YBit"
green="		Matrix"

# Variable passed to rofi

options="$red\n$green\n$bu"

draw-menu 

case $chosen in
    $red)
			apply Red 
        ;;
    $green)
			apply Matrix 
        ;;
    $bu)
			apply Blue 
        ;;
esac
