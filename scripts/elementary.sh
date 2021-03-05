#!/bin/bash

DIR="/home/alguien/.config/polybar"

rm $DIR/launch.sh &
cp $DIR/panels/launch.sh /home/alguien/.config/polybar/ &
bash $DIR/launch.sh
