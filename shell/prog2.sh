#!/usr/local/bin/gawk -f

BEGIN {
}

{
    b[$1 "___" $2] += $3
    a[$1] += $3
}

END {

    for (i in b) {
        print i, b[i]
    }

    # sort array b by values
    for (i in b) tmpidxb[sprintf("%12s", b[i]), i] = i
    numb = asorti(tmpidxb)
    j = 0
    for (i=1; i<=numb; i++) {
        split(tmpidxb[i], tmpb, SUBSEP)
        indices2[++j] = tmpb[2]   # name
    }

    for (i in indices2) {
        print i, indices2[i]
    }

}