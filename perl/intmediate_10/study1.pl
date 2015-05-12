#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

my @numerically_sorted = sort { $a <=> $b } 1, 2, 4, 8, 16, 32;
dump \@numerically_sorted;

#--------------------------

my @input = qw(Gilligan Skipper Professor Ginger Mary Ann);
dump \@input;

my @sorted_positions =
sort { $input[$a] cmp $input[$b] } 0 .. $#input;
dump \@sorted_positions;

my @ranks;
@ranks[@sorted_positions] = (0..$#sorted_positions);
dump \@ranks;
