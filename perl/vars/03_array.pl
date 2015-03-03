#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# assign a list to an array
my @home = ("couch", "chair", "table", "stove");

my ($potato, $lift, $tennis, $pipe) = @home;

my $alpha = "1";
my $omega = "2";

($alpha, $omega) = ($omega, $alpha);

print "alpha=$alpha\n";
print "omega=$omega\n";

