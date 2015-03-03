#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# assign a list to an array
my @home = ("couch", "chair", "table", "stove");

my ($potato, $lift, $tennis, $pipe) = @home;

my $alpha = "alpha";
my $omega = "omega";

($alpha, $omega) = ($omega, $alpha);

print "alpha=$alpha\n";
print "omega=$omega\n";

print "end\n";
