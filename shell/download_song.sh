#!/bin/sh

INPUT_URL="http://mp3.zing.vn/bai-hat/Dat-Viet-Buc-Tuong/ZW6FODWZ.html"
CURL_MODE="--compressed"

song_xml_url=`curl $CURL_MODE $INPUT_URL 2>/dev/null | grep -oE '<embed id.*></embed>' | sed -e 's/.*xmlURL=\(.*\)\&amp;.*/\1/'`
song_xml=`curl $CURL_MODE $song_xml_url 2>/dev/null`

song_url=`echo $song_xml | grep -oE '<source>.*</source>' | sed -e 's/.*\[CDATA\[\(.*\)\]\].*/\1/'`
song_title=`echo $song_xml | grep -oE '<title>.*</title>' | sed -e 's/.*\[CDATA\[\(.*\)\]\].*/\1/' | xargs`

curl -o "$song_title.mp3" -L $song_url
