#!/bin/sh
echo "Usage: $0 start|stop|search"

NOW=$(date +"%d-%m-%Y")
HOME=.

case "$1" in
    start)
        echo "start command!"
        #export -p
        read -t 3 -p "Enter your name : " name
        echo "Hi, $name. Let us be friends!"
        echo "Dumping sql at $NOW"
        ;;
    search)
        find $HOME -name \*.sh
        ;;
    stop)
        echo "stop command!"
        ;;
    *)
        echo "whatever!"
        ;;
esac
