#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Person9;

my $person = Person->new(
    "surname", "Galilei",
    "forename", "Galileo",
    "address", "Hanoi",
    "occupation", "bombardier"
);

$person->printletter("You have the money. Please pay it.");
