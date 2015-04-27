#!/bin/sh


read_dom () {
    local IFS=\>
    read -d \< ENTITY CONTENT
    local RET=$?
    TAG_NAME=${ENTITY%% *}
    ATTRIBUTES=${ENTITY#* }
    return $RET
}

parse_dom () {
    if [[ $TAG_NAME = "item" ]] ; then
        eval local $ATTRIBUTES
        echo $CONTENT
        echo $ENTITY
        echo "foo size is: $type"
    fi
}

INPUT_URL="http://mp3.zing.vn/album/Ke-O-Mien-Xa-Quang-Le/ZWZAIFOI.html"
CURL_MODE="--compressed"

xml_url=`curl $CURL_MODE $INPUT_URL 2>/dev/null | grep -oE '<embed id.*></embed>' | sed -e 's/.*xmlURL=\(.*\)\&amp;.*/\1/'`
xml_content=`curl $CURL_MODE $xml_url 2>/dev/null`

echo $xml_content | while read_dom; do
    parse_dom
done  

# echo $xml_content | awk -F '[<>]' 