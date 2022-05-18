#!/bin/env bash

sleep 1200 && /home/$(whoami)/.config/scripts/enviroment/betterlockscreen.sh && /home/$(whoami)/.config/scripts/enviroment/wal.sh && dunstify "New wa" && /usr/bin/inf.sh
