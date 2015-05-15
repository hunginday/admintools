#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;
use Benchmark;

my @unsorted;
my @sorted1;

while (<>) {
    next if /^#/;
    chomp;
    push @unsorted, $_;
}

@sorted1 = 
    map{ $_->[0] }
    sort { $a->[1] cmp $b->[1] }
    map {
        m/(.*?)\s*(\S+),.*?(\d\d\d\d),.*$/;
        [$_, "$2 $1", $3 ]
    }
    @unsorted;

dump \@sorted1;
