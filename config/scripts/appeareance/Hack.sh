#!/usr/bin/env bash

source $HOME/config/scripts/appeareance/General-Options.sh



hack-theme () {

  cat $DIR/polybar/bspwmbdarch/temas/Hack/$1 > $DIR/polybar/bspwmbdarch/colors.ini &
  cat $DIR/polybar/bspwmbdarch/launch.sh > $DIR/polybar/launch.sh &

}

apply (){
hack-theme $1 && theme Hack/$1
}


# Availabe themes

red="		Red"
bu="		Blue"
green="		Matrix"

# Variable passed to rofi

options="$red\n$green\n$bu"

draw-menu 

case $chosen in
    $red)
			apply Red 
        ;;
    $green)
			apply Green 
        ;;
    $bu)
			apply Blue 
        ;;
esac
