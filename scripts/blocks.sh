#!/bin/bash

DIR="/home/alguien/.config/polybar"

rm $DIR/launch.sh &
cp $DIR/blocks/launch.sh /home/alguien/.config/polybar/ &
bash $DIR/launch.sh
