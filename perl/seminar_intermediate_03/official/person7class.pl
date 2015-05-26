#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

# Define a class that inherits Person
package AKindOfPerson;
use parent "Person7Class";

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

# create an instance of the superclass
my $parent = Person7Class->new(
    "surname", "Tran",
    "forename", "Hung",
    "address", "HCM",
    "occupation", "engineer"
);

# try to check the headcount
print "Headcount: ", $parent->headcount, "\n";
