#!/bin/sh
echo "Usage: $0 start|stop"
case "$1" in
    start)
        echo "start command!"
        ;;
    stop)
        echo "stop command!"
        ;;
    *)
        echo "whatever!"
        ;;
esac
