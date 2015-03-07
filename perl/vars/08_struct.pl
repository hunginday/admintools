#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# Assign a list of array references to an array.
@AoA = (
    [ "fred", "barney" ],
    [ "george", "jane", "elroy" ],
    [ "homer", "marge", "bart" ],
);

print $AoA[2][1]; # prints "marge"

print "end\n";
