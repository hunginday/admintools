#!/bin/sh

CURL_MODE="--compressed"
HOME_FOLDER=/hungtd/git/study/shell

read_tag () { local IFS=\< ; read -d \< E ;}

download_song () {
    echo "\"$folder_name/$song_title.mp3\", $song_mp3_url"
    cd $HOME_FOLDER/$folder_name
    wget -O "$song_title.mp3" $song_mp3_url
}

read -p "Input URL: " input_url

xml_url=`curl $CURL_MODE $input_url 2>/dev/null | grep -oE '<embed id.*></embed>' | sed -e 's/.*xmlURL=\(.*\)\&amp;.*/\1/'`
xml_content=`curl $CURL_MODE $xml_url 2>/dev/null`

if [[ "$input_url" =~ .*bai-hat.* ]]; then
    folder_name=`echo $input_url | sed -e 's/.*bai-hat\/\(.*\)\/.*/\1/'`
    echo $folder_name
elif [[ "$input_url" =~ .*album.* ]]; then
    folder_name=`echo $input_url | sed -e 's/.*album\/\(.*\)\/.*/\1/'`
    echo $folder_name
fi

cd $HOME_FOLDER
mkdir $folder_name

prev_tag=""

while read_tag; do
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
