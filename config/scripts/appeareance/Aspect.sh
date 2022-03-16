#!/usr/bin/env bash

source $HOME/config/scripts/appeareance/General-Options.sh

# Availabe themes

gray="		Graveyard"
vap="		Vaporware"
nord="		Nord"
gruvb="		Gruvbox"
dark="		Hack"
aes="	  ✨ A E S T H E T I C ✨"
cap="		Catppuccin"

options="$aes\n$cap\n$gray\n$gruvb\n$nord\n$vap\n$dark"


gen () {
 
  DIR=~/.config
  cat $DIR/polybar/$1/launch.sh > $DIR/polybar/launch.sh &

}

draw-menu
case $chosen in
    $nord)
			gen blocks && theme Nord  &&  ~/config/polybar/blocks/scripts/styles.sh --default &
        ;;
    $gruvb)
			gen blocks && theme Gruvbox &&  ~/config/polybar/blocks/scripts/styles.sh --gruvbox &
        ;;
    $dark)
			bash ~/.config/scripts/appeareance/Hack.sh
        ;;
    $vap)
			gen forest && theme Vaporware 
        ;;
     $aes)
			bash ~/.config/scripts/appeareance/Aesthetic.sh
        ;;

    $cap)
			gen shapes && theme catppuccin 
        ;;

    $gray)
			gen murz && theme Graveyard 
        ;;
esac

