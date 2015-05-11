#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;


count_one();
count_one();
count_one();

{
my $count;
sub count_one { ++$count }
sub count_so_far { return $count }
}

count_one();
count_one();
count_one();

print 'we have seen ', count_so_far(), " coconuts!\n";
