#!/bin/bash

TYPE="mp4"

if [ -n "$1" ]
then
  currentDate=$(date +%m%d-%H%M%S)
  if [ "$2" = "$TYPE" ]
  then
    /usr/local/bin/youtube-dl --format mp4 $1 -o "~/OneDrive/video/${currentDate}.%(ext)s"
  else
    /usr/local/bin/youtube-dl -x --audio-format m4a $1 -o "~/OneDrive/video/${currentDate}.%(ext)s"
  fi
  /usr/local/bin/onedrive --synchronize  
  echo 'Everything is OK!'
else
  echo "URL is empty"
fi
