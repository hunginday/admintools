#!/bin/sh

CURL_MODE="--compressed"
HOME_FOLDER=/hungtd/git/study/shell
VERSION=0.9
HELP="""Usage: $0 [OPTION] [MP3_ZING_URL]

Download a song or album from mp3.zing.vn

Option:
    -h, --help      Show help
    -v, --version   Show version
"""

show_version () {
    echo "version: $VERSION"
}

show_help () {
    echo "$HELP"
}

read_tag () { local IFS=\< ; read -d \< E ;}

download_song () {
    echo "\"$folder_name/$song_title.mp3\", $song_mp3_url"
    cd $HOME_FOLDER/$folder_name
    wget -O "$song_title.mp3" $song_mp3_url
}

download_album () {
    cd $HOME_FOLDER
    mkdir -p $folder_name

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
}

input=$1
case "$input" in
  -v|--version)
    show_version
    ;;
  -h|--help)
    show_help
    ;;
  *)
    if [[ "$input" =~ http://.*/.*/(.*)/.* ]]; then
        folder_name=${BASH_REMATCH[1]}
        xml_url=`curl $CURL_MODE $input 2>/dev/null | grep -o '<embed id.*>' | grep -o 'http://mp3[^&]*'`
        xml_content=`curl $CURL_MODE $xml_url 2>/dev/null`
        echo "XML URL: $xml_url"
        download_album
    else
        echo "Wrong input format!"
        exit
    fi
    ;;
esac
