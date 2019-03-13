#!/bin/bash
echo "Please input youtube url:"
read URL
currentDate=$(date +%m%d-%H%M%S)

# echo ${currentDate}

/usr/local/bin/youtube-dl --format mp4 $URL -o "~/OneDrive/video/${currentDate}.%(ext)s"

/usr/local/bin/onedrive --synchronize

echo 'Everything is OK!'
