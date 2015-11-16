#!/bin/bash

for file in `ls`
do
    echo "the file name is ${file}"
done

count=0
while [[ $count -lt 10 ]]; do
    echo "current count is ${count}"
    let count=count+1
done
