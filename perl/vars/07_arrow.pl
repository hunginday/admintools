#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# $$arrayref[2] = "Dorian"; #1
# ${$arrayref}[2] = "Dorian"; #2
# $arrayref->[2] = "Dorian"; #3

# $$hashref{KEY} = "F#major"; #1
# ${$hashref}{KEY} = "F#major"; #2
# $hashref–>{KEY} = "F#major"; #3

# &$coderef(Presto => 192); #1
# &{$coderef}(Presto => 192); #2
# $coderef–>(Presto => 192); #3


my $listref = [
    "a",
    ["b"],
    ["c","d","replaced"],
];

print "array = ".Dumper(@{$listref})."\n";

$listref->[2][2] = "hello";
$$listref[2][2] = "world";
${${$listref}[2]}[2] = "i";
${$$listref[2]}[2] = "am";
$listref->[2]->[2] = "hanoi";

print "array = ".Dumper(@{$listref})."\n";

print "end\n";
