#!/bin/bash

if [ "$1" != "odd" ] && [ "$1" != "even" ]
then
   echo "Usage: $0 odd|even"
fi

opt=0
[ "$1" == "odd" ] && opt=1
while true
do
   let my_random=RANDOM%10+1
   let is_even=my_random%2
   [ $is_even -eq $opt ] && break;
done
echo $my_random
