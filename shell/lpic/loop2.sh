#!/bin/bash

file=$1
action=$2

if [ -z "$file" ]
then
    echo "please enter file name"
    exit 1
fi

if [ -z "$action" ]
then
    echo "please enter action"
    exit 1
fi

for user in `cat $file`
do
    echo $user
done
