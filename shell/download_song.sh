#!/bin/sh

SONG_URL="http://mp3.zing.vn/bai-hat/Dat-Viet-Buc-Tuong/ZW6FODWZ.html"
SONG_MODE="--compressed"

song_name=`echo $SONG_URL | sed -e 's/.*bai-hat\/\(.*\)\/.*/\1/'`
song_xml=`curl $SONG_MODE $SONG_URL 2>/dev/null | grep -oE '<embed id.*></embed>' | sed -e 's/.*xmlURL=\(.*\)\&amp;.*/\1/'`
song_url=`curl $SONG_MODE $song_xml 2>/dev/null | grep -oE '<source>.*</source>' | sed -e 's/.*\[CDATA\[\(.*\)\]\].*/\1/'`

curl -o "$song_name.mp3" -L $song_url
