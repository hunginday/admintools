#!/bin/bash

location=$1
filename=$2

if [ -z "$location" ]; then
    echo "Please provide location"
    exit 1
fi

if [ -z "$filename" ]
then
    echo "Please provide filename"
    exit 1
fi
