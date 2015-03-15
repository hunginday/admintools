#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my $line;

while (defined($line = <STDIN>)) {
    print "I saw $line";
}

print "end line 1\n";

while (<STDIN>) {
    print "I saw $_";
}

print "end line 2\n";

foreach (<STDIN>) {
    print "I saw $_";
}

