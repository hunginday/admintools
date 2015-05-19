#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use NameSort;

my @unsorted;

while (<>) {
    next if /^#/;
    chomp;
    push @unsorted, $_;
}

my $sorted = name_sort2(\@unsorted);

dump $sorted;

print "\n";
