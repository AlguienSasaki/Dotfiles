#! /bin/bash

action=$(yad --fixed --borders=8 --title "Apagar el equipo" \
--button="Cerrar Sesión:1" \
--button="Reiniciar:2" \
--button="Apagar:3" --button="Cancelar:4" \
--text "                                              Apagar el Equipo  ")

ret=$?
	
	if [[ $ret -eq 1 ]]; then
		bspc quit
		exit 0
	fi

	if [[ $ret -eq 2 ]]; then
		systemctl reboot
		exit 0
	fi
	
	if [[ $ret -eq 3 ]]; then
		systemctl poweroff
		exit 0
	fi
	
	[[ $ret -eq 4 ]] && exit 0
	
