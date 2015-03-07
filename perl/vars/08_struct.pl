#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14; # using the + prototype, new to v5.14


sub show(+) {
    require Dumpvalue;
    state $prettily = new Dumpvalue::
                    tick => q("),
                    compactDump => 1, # comment these two lines out
                    veryCompact => 1, # if you want a bigger dump
                    ;
    dumpValue $prettily @_;
}

sub create_array {
    return ("1", "2", "3");
}

# Assign a list of array references to an array.
my @AoA = (
    [ "fred", "barney" ],
    [ "george", "jane", "elroy" ],
    [ "homer", "marge", "bart" ],
);

print $AoA[2][1]; # prints "marge"

# Create a reference to an array of array references.
my $ref_to_AoA = [
    [ "fred", "barney", "pebbles", "bamm bamm", "dino", ],
    [ "homer", "bart", "marge", "maggie", ],
    [ "george", "jane", "elroy", "judy", ],
];

print $ref_to_AoA->[2][3]; # prints "judy"

print "\n";

show @AoA;

print "\n";

show @$ref_to_AoA;

print "\n";

dump @AoA;

print "\n";

dump $ref_to_AoA;

for my $i (0..5) {
    $AoA[$i] = [ create_array() ];    
}

dump @AoA;

print "\n";

print "end\n";




