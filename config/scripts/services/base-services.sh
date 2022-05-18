#!/bin/env bash

services-fun(){
if ps ax | grep -v grep | grep $1 > /dev/null
then
echo "El servicio $1 esta ejecutandose"
else
$1
fi
}

