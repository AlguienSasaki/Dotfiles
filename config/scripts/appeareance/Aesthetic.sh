#!/usr/bin/env bash

source $HOME/config/scripts/appeareance/General-Options.sh

aes-theme () {

  TEN=temas/Aesthetic/$1
  cat $DIR/polybar/colorblocks/$TEN > $DIR/polybar/colorblocks/colors.ini &
  cat $DIR/polybar/colorblocks/launch.sh > $DIR/polybar/launch.sh &

}

apply (){
aes-theme $1 && theme Aesthetic/$1
}

# Availabe themes

pink="		Pink"
bu="		Blue"
cap="		Cappuccino"

# Variable passed to rofi

options="$bu\n$cap\n$pink"

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
esac
