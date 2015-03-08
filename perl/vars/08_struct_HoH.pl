#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my %HoH = (
    flintstones => {
        husband => "fred",
        pal => "barney",
    },
    jetsons => {
        husband => "george",
        wife => "jane",
        "his boy" => "elroy", # Key quotes needed.
    },
    simpsons => {
        husband => "homer",
        wife => "marge",
        kid => "bart",
    },
);



print "end\n";