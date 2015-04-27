#!/bin/sh

INPUT_URL="http://mp3.zing.vn/bai-hat/Dat-Viet-Buc-Tuong/ZW6FODWZ.html"
CURL_MODE="--compressed"

xml_url=`curl $CURL_MODE $INPUT_URL 2>/dev/null | grep -oE '<embed id.*></embed>' | sed -e 's/.*xmlURL=\(.*\)\&amp;.*/\1/'`
xml_content=`curl $CURL_MODE $xml_url 2>/dev/null`

song_mp3_url=`echo $xml_content | grep -oE '<source>.*</source>' | sed -e 's/.*\[CDATA\[\(.*\)\]\].*/\1/'`
song_title=`echo $xml_content | grep -oE '<title>.*</title>' | sed -e 's/.*\[CDATA\[\(.*\)\]\].*/\1/' | xargs`

curl -o "$song_title.mp3" -L $song_mp3_url
