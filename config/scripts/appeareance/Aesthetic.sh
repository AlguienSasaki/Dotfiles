#!/usr/bin/env bash

source $HOME/config/scripts/appeareance/General-Options.sh

theme (){
  write $1 && app
}

aes-theme () {

  TEN=temas/Aesthetic/$1
  cat $DIR/polybar/colorblocks/$TEN > $DIR/polybar/colorblocks/colors.ini &
}

apply (){
aes-theme $1 && theme Aesthetic/$1
}


# Availabe themes

pink="		Pink"
bu="		Blue"
cap="		Cappuccino"
cherry="		Cherry"


# Variable passed to rofi

options="$bu\n$cap\n$cherry\n$pink"

draw-menu
case $chosen in
    $pink)
			apply Pink         
        ;;
    $bu)
			apply Blue 	
        ;;
    $cap)
			apply Cappuccino 
        ;;
    $cherry)
			apply Cherry 
        ;;
esac
