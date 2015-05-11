#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;


count_down();
count_down();
count_down();

BEGIN {
my $countdown = 10; # actually assigned in run-time only
sub count_down { $countdown-- }
sub count_remaining { $countdown }
}

count_down();
count_down();
count_down();
print "we're down to ", count_remaining(), " coconuts!\n";

