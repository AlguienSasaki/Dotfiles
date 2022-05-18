volume="$(pamixer --get-volume)"
dunstify -i ~/.config/dunst/iconpng/si.png "Volume Level:" $volume -t 800 -r 2345 
