#!/bin/bash

x=1

alacritty &
x=x+1 & 
dunstify "$x" &
