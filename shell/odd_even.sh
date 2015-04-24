#!/bin/bash

function get_random {
    let y=$RANDOM%10+1
    echo $y
    exit
}

if [ $#  -ge 1 ]; then
    echo "something"
else
    let x=`get_random`
    echo $x
fi


