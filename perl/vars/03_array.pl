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

#=======================

# @days                 Array containing ($days[0], $days[1], ... $days[N])
# @days[3, 4, 5]        Array slice containing ($days[3], $days[4], $days[5])
# @days[3..5]           Array slice containing ($days[3], $days[4], $days[5])
# @days{"Jan","Feb"}    Hash slice containing ($days{"Jan"},$days{"Feb"})

my $temp = join( $", @ARGV );
print $temp."\n";
print "@ARGV\n";

print "end\n";
