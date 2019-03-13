#!/bin/bash
# echo "Please input youtube url:"
# read URL
currentDate=$(date +%m%d-%H%M%S)

# echo ${currentDate}

/usr/local/bin/youtube-dl -x --audio-format m4a $1 -o "~/OneDrive/video/${currentDate}.%(ext)s"

/usr/local/bin/onedrive --synchronize

echo 'Everything is OK!'
