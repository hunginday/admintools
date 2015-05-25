#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Person7;

print "In the beginning: ", Person->headcount, "\n";

my $person1 = Person->new(
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

print "\nPeople we know:\n";
for my $person (Person->everyone) {
    print $person->forename, " ", $person->surname, "\n";
}
