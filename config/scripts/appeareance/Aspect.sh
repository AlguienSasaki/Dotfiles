#!/usr/bin/env bash

source $HOME/config/scripts/appeareance/General-Options.sh

theme (){
  write $1 && app &
}

# Availabe themes
o

gray="		Graveyard"
vap="		Vaporware"
nord="		Nord"
gruvb="		Gruvbox"
dark="		Hack"
aes="	  ✨ A E S T H E T I C ✨"
cap="		Catppuccin"
mdrn="		Normal"

options="$aes\n$mdrn\n$dark\n$gray\n$cap\n$gruvb\n$nord\n$vap"

draw-menu
case $chosen in
    $nord)
			theme Nord  &&  ~/config/polybar/blocks/scripts/styles.sh --default &
        ;;
    $gruvb)
			theme Gruvbox &&  ~/config/polybar/blocks/scripts/styles.sh --gruvbox &
        ;;
    $dark)
			bash ~/.config/scripts/appeareance/Hack.sh
        ;;
    $vap)
			theme Vaporware 
        ;;
    $aes)
			bash ~/.config/scripts/appeareance/Aesthetic.sh
        ;;
    $mdrn)
			theme Normal 
        ;;
    $cap)
			theme Catppuccin 
        ;;

    $gray)
			theme Graveyard 
        ;;
esac
