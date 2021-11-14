#!/bin/sh
sh -c "amixer set Master toggle ; amixer get Master | \
     grep '\[off\]' && dunstify -i /usr/share/icons/Adwaita/64x64/status/audio-volume-muted-symbolic.symbolic.png 'Audio Inabilitado' || dunstify -i /usr/share/icons/Adwaita/64x64/status/audio-volume-high-symbolic.symbolic.png 'Audio Habilitado'"
