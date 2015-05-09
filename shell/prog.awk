#!/usr/local/bin/gawk -f

BEGIN {
}

{
    b[$1, "___",$2] += $3
    a[$1] += $3
}

END {
    # sort array a
    for (i in a) tmpidx[sprintf("%12s", a[i]),i] = i
    num = asorti(tmpidx)
    j = 0
    for (i=1; i<=num; i++) {
        split(tmpidx[i], tmp, SUBSEP)
        indices[++j] = tmp[2]  # name
    }

    # sort array b
    for (i in b) tmpidxb[sprintf("%12s", b[i]), i] = i
    numb = asorti(tmpidxb)
    j = 0
    for (i=1; i<=numb; i++) {
        split(tmpidxb[i], tmpb, SUBSEP)
        indicesb[++j] = tmpb[2] "___" tmpb[4]   # name
    }

    # print out
    for (i=num; i>=1; i--) {
        print indices[i], ":", a[indices[i]], "total bytes sent"
        for (k=numb; k>=1; k--) {
            z = "^" indices[i]
            if ( indicesb[k] ~ z ) {print indicesb[k], b[indicesb[k]]}
        }
    }
}
