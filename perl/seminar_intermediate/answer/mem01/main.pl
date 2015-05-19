#!/bin/perl

use strict;
use NameSort;
#use Data::Dumper;

my @data = (); 

while (<>) {
    push @data, $_; 
}

my @result = name_sort(\@data);

#print Dumper(\@result);
foreach my $line (@result) {
    print $line . "\n";
}
