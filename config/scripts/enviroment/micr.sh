#!/bin/sh
sh -c "amixer set Capture toggle ; amixer get Capture | \
     grep '\[off\]' && dunstify -i /usr/share/icons/Adwaita/64x64/status/microphone-disabled-symbolic.symbolic.png 'MIC switched OFF' || dunstify -i /usr/share/icons/Adwaita/64x64/devices/audio-input-microphone-symbolic.symbolic.png 'MIC switched ON'"
