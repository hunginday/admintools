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

# Braces denote an anonymous hash
# Square brackets denote an anonymous array

my %account = (
    "number" => "31415926",
    "opened" => "3000-01-01",
    "owners" => [
        {
            "name" => "Philip Fry",
            "DOB"  => "1974-08-06",
        },
        {
            "name" => "Hubert Farnsworth",
            "DOB"  => "2841-04-09",
        },
    ],
);

my @array1 = (1, 2, 3, 4, 5);
my @array2 = [1, 2, 3, 4, 5];

print "array1: ".Dumper(@array1)."\n";
print "array2: ".Dumper($array2)."\n";



