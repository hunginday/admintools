#!/bin/bash

input=$1
input2=$2

function func1 {
    echo "this is the first function"
}

function func2 {
    echo "this is the second function"
}

function input_function {
    echo "the name you gave me is: $1"
}

case $input in
    1)
        func1
        ;;
    2)
        func2
        ;;
    3)
        input_function hungtd
        ;;
    *)
        echo "there is no valid input"
        ;;
esac
