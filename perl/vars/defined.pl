#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my $madonna = <STDIN>;
    if ( defined($madonna) ) {
print "The input was $madonna";
} else {
    print "No input available!\n";
}
