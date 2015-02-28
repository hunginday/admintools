#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;


my $colour    = "Indigo";
my $scalarRef = \$colour;

print "test1: ".Dumper($colour)."\n";
print "test2: ".Dumper($scalarRef)."\n";

print "test3: ".$colour."\n";
print "test4: ".$scalarRef."\n";

print "test5: ".${$scalarRef}."\n";
print "test6: ".$$scalarRef."\n";

