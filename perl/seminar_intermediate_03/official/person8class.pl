#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

# Define a class that inherits Person
package AKindOfPerson;
use parent "Person8Class";

sub _init {
    my $filename = (caller(0))[1];
    print "_init is overwritten in $filename\n";
}

# Back to main
package main;

my $person = AKindOfPerson->new(
    "surname", "Galilei",
    "forename", "Galileo",
    "address", "Hanoi",
    "occupation", "bombardier"
);

dump \$person;

print "Headcount: ", $person->headcount, "\n";
