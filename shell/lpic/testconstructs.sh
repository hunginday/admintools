#!/bin/bash

var1=5
var2=4

if (( "$var1" > "$var2" ))
then
    echo "var1 > var2"
fi

if [ "$var1" -gt "$var2" ]
then
    echo "var1 > var2"
fi
