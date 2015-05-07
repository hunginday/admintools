#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;


my @x = (1, 2, 4, 8, 16, 32, 64);
my @y = (1, 0, 4, 8, 9, 32, 45);

my @bigger_indices = grep {
    if ($_ > $#y or $x[$_] > $y[$_]) {
        1; # yes, select it
    } else {
        0; # no, don't select it
    }
} 0..$#x;

my @bigger = @x[@bigger_indices];

dump \@bigger_indices;
dump \@bigger;
