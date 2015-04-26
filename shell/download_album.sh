#!/bin/sh

INPUT_URL="http://mp3.zing.vn/album/Ke-O-Mien-Xa-Quang-Le/ZWZAIFOI.html"
CURL_MODE="--compressed"

album_xml_url=`curl $CURL_MODE $INPUT_URL 2>/dev/null | grep -oE '<embed id.*></embed>' | sed -e 's/.*xmlURL=\(.*\)\&amp;.*/\1/'`

echo $album_xml_url
