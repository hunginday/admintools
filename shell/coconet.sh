
FILE=coconet.dat; xxx=`cat $FILE | awk '{b[$1, "___" ,$2] += $3} END {for (n in b) {print n, b[n]} }' | sort -r -k2,2 -n`; cat $FILE | awk '{a[$1] += $3} END { for (i in a) {print i, a[i]} }' | sort -r -n -k2,2 | while read nguon total; do echo "$nguon: $total total bytes sent"; echo "$xxx" | grep "^$nguon"; echo "========="; done
