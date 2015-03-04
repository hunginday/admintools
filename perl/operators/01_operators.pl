#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $line = "test";
my $fill = "fill";
my $val;

$line .= "\n"; # Append newline to $line.
$fill x= 80; # Make string $fill into 80 repeats of itself.
$val ||= "2"; # Set $val to 2 if it isn't already "true".

print "line = $line\n";
print "fill = $fill\n";
print "val = $val\n";


my $a = my $b = my $c = 10;
print "a = $a, b = $b, c = $c\n";

($a -= 32) *= 5/9;
print "a = $a\n";

print "end\n";
