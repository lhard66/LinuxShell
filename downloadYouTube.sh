i#!/bin/bash
echo "Please input youtube url:"
read URL
currentDate=$(date +%m%d%S)

# echo ${currentDate}

/usr/local/bin/youtube-dl -x --audio-format m4a $URL -o "~/OneDrive/video/${currentDate}.%(ext)s"

/usr/local/bin/onedrive --synchronize

echo 'over!'
