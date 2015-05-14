#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.10;

require Bestiary;

$Bestiary::weight = 2048;
my $local_weight = $Bestiary::weight;
print "\$local_weight: $local_weight\n";

#say "Animal is ", camel(), " has weight $weight";
