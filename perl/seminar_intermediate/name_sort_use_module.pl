#!/usr/bin/perl
use strict;
use warnings;

use NameSort;

my @unsorted;

while (<>) {
    chomp;
    push @unsorted, $_;
}

my $sorted = name_sort(\@unsorted);

for my $person (@$sorted) {
    print "$person\n";
}
