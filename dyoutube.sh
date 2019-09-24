#!/bin/bash

TYPE="mp4"

if [ -n "$1" ]
then
  currentDate=$(date +%m%d-%H%M%S)
  if [ "$2" = "$TYPE" ]
  then
    /usr/local/bin/youtube-dl --format mp4 "$1" -o "$HOME/OneDrive/video/${currentDate}.%(ext)s"
  else
    /usr/local/bin/youtube-dl -x --audio-format m4a "$1" -o "$HOME/OneDrive/video/${currentDate}.%(ext)s"
  fi

  if [ "$3" = "sync" ]
  then
    /usr/local/bin/onedrive --synchronize
  fi

  echo 'Everything is OK!'
else
  echo "URL is empty"
fi
