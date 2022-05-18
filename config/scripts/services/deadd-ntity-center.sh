#!/bin/env bash

if ps ax | grep -v grep | grep dunst > /dev/null
then
deadd-notification-center 
else
dunst && deadd-notification-center
fi
