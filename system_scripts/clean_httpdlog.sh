#!/bin/sh
#This script requires root privilege to clean apache log

cd /data/mgsys/apachelog
hold_logs=5

for target in access_log error_log
do
  echo "target($target)"

  rm_flag=0
  count=0

  files=`ls -td ${target}*`

  for i in $files
  do
    count=`expr $count + 1`
    if [ $count = `expr $hold_logs + 1` ]; then
      rm_flag=1
    fi

    echo "$i ($count)"
    if [ $rm_flag = 1 ]; then
      echo "rm -rf $i"
      rm -rf $i
    fi
  done

done

