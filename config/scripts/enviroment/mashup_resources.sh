#!/bin/env bash

DIR="$HOME/Downloads"
DOR="$HOME/Documents/Mashup"

# make mashup resources directories
mkdir -p $DOR/acapellas &&  
mkdir -p $DOR/instrumentals &&  

# Organizing The Acapellas
mv $DIR/VideoDownloader/*acapella* $DOR/acapellas &
mv $DIR/VideoDownloader/*Acapella* $DOR/acapellas &
mv $DIR/VideoDownloader/*ACAPELLA* $DOR/acapellas &
mv $DIR/VideoDownloader/*vocals*   $DOR/acapellas &
mv $DIR/VideoDownloader/*Vocals*   $DOR/acapellas &
mv $DIR/VideoDownloader/*vocal*    $DOR/acapellas &
mv $DIR/VideoDownloader/*Vocal*    $DOR/acapellas &

# Organizing The Instrumentals 
mv $DIR/VideoDownloader/*instrumental* $DOR/instrumentals &
mv $DIR/VideoDownloader/*Instrumental* $DOR/instrumentals &
mv $DIR/VideoDownloader/*INTRUMENTAL*  $DOR/instrumentals & 
