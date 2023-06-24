#!/bin/env bash

DIR="$HOME/Downloads"
DOC="$HOME/Documents"
DOR="$HOME/Documents/Mashup"


# Create necessary directories
mkdir -p $DIR/"Organized Files"/h &&  
mkdir -p $DIR/"Organized Files"/images &&  
mkdir -p $DIR/"Organized Files"/zip &&  
mkdir -p $DIR/"Organized Files"/video &&  
mkdir -p $DIR/"Organized Files"/apk &&  
mkdir -p $DIR/"Organized Files"/docs &&  

# make mashup resources directories
mkdir -p $DOR/acapellas &&  
mkdir -p $DOR/instrumentals &&  

## Documents
mv $DIR/*.pdf   $DOC & 
mv $DIR/*.doc   $DOC & 
mv $DIR/*.docx  $DOC & 
mv $DIR/*.pptx  $DOC & 
mv $DIR/*.odt   $DOC & 
mv $DIR/*.pages $DOC & 

## Compressed Files
mv $DIR/*.zip $DIR/"Organized Files"/zip &
mv $DIR/*.7z $DIR/"Organized Files"/zip &
mv $DIR/*.tar $DIR/"Organized Files"/zip &
mv $DIR/*.gz  $DIR/"Organized Files"/zip &
mv $DIR/*.tar.gz $DIR/"Organized Files"/zip &
mv $DIR/*.rar $DIR/"Organized Files"/zip &

## Images
mv $DIR/*.jpg $DIR/"Organized Files"/images &
mv $DIR/*.JPG $DIR/"Organized Files"/images &
mv $DIR/*.png $DIR/"Organized Files"/images &
mv $DIR/*.PNG $DIR/"Organized Files"/images &
mv $DIR/*.img $DIR/"Organized Files"/images &
mv $DIR/*.IMG $DIR/"Organized Files"/images &
mv $DIR/*.gif $DIR/"Organized Files"/images &
mv $DIR/*.jpeg $DIR/"Organized Files"/images &
mv $DIR/*.webp $DIR/"Organized Files"/images &

## H
mv $DIR/*HLA* $DIR/"Organized Files"/h &
mv $DIR/*Hentai* $DIR/"Organized Files"/h &
mv $DIR/*hentai* $DIR/"Organized Files"/h &

## Video
mv $DIR/*.mp4 $DIR/"Organized Files"/video &
mv $DIR/*.mov $DIR/"Organized Files"/video &

## Audio 
mv $DIR/*.mp3 $DIR/VideoDownloader &

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

## OS
mv $DIR/*.iso $DIR/"Organized Files"/os &

