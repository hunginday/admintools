#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module


my @array = 5..9;
my $fred = pop(@array); # $fred gets 9, @array now has (5, 6, 7, 8)
my $barney = pop @array; # $barney gets 8, @array now has (5, 6, 7)
pop @array; # @array now has (5, 6). (The 7 is discarded.)
push(@array, 0); # @array now has (5, 6, 0)
push @array, 8; # @array now has (5, 6, 0, 8)
push @array, 1..10; # @array now has those 10 new elements
my @others = qw/ 9 0 2 1 0 /;
push @array, @others; # @array now has those five new elements (19 total)

dump @array;

print "end\n";
