#!/bin/bash

echo "*** todo script ***"
echo -n "what task do you like to add:"

read todo

echo "you'd like to do: ${todo}"

if grep -qi $todo todo.txt
then
    echo "action is already in your list"
else
    echo $todo >> todo.txt
fi
