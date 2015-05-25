#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Person6;

print "In the beginning: ", Person->headcount, "\n";

my $person = Person->new(
    "surname", "Galilei",
    "forename", "Galileo",
    "address", "Hanoi",
    "occupation", "bombardier"
);

print "Population now: ", Person->headcount, "\n";

my $person2 = Person->new(
    "surname", "Tran",
    "forename", "Hung",
    "address", "HCM",
    "occupation", "engineer"
);

print "Population now: ", Person->headcount, "\n";
