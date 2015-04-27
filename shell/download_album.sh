#!/bin/sh

INPUT_URL="http://mp3.zing.vn/album/Ke-O-Mien-Xa-Quang-Le/ZWZAIFOI.html"
CURL_MODE="--compressed"
HOME_FOLDER=/hungtd/git/study/shell

xml_url=`curl $CURL_MODE $INPUT_URL 2>/dev/null | grep -oE '<embed id.*></embed>' | sed -e 's/.*xmlURL=\(.*\)\&amp;.*/\1/'`
xml_content=`curl $CURL_MODE $xml_url 2>/dev/null`

rtag () { local IFS=\< ; read -d \< E ;}

download_song () {
    full_path="\"$album_name/$song_title.mp3\""
    echo "$full_path, $song_mp3_url"
    cd $HOME_FOLDER/$album_name
    wget -O "$song_title.mp3" $song_mp3_url
}

album_name=`echo $INPUT_URL | sed -e 's/.*album\/\(.*\)\/.*/\1/'`
cd $HOME_FOLDER
mkdir $album_name

prev_tag=""

while rtag; do
    if [[ "$prev_tag" =~ ^title\> ]]; then
        current_title="$E"
    fi

    if [[ "$prev_tag" =~ ^source\> ]]; then
        current_source="$E"
        
        song_title=`echo $current_title | sed -e 's/.*\[CDATA\[\(.*\)\]\].*/\1/' | xargs`
        song_mp3_url=`echo $current_source | sed -e 's/.*\[CDATA\[\(.*\)\]\].*/\1/' | xargs`

        download_song

        title_content=""
        source_content=""
    fi

    prev_tag="$E"
done <<< $xml_content

