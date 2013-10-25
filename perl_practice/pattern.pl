#!/usr/bin/perl -w

$_ = "abba";
if (/(.)\1/) { # matches 'bb'
print "It matched same character next to itself!\n"; }


exit 0;