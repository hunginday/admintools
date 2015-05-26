#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Employee2;

my $person = Employee->new(
    "surname", "Galilei",
    "forename", "Galileo",
    "address", "Hanoi",
    "occupation", "bombardier"
);

$person->salary("12000");
print "Initial salary: ", $person->salary, "\n";
print "Salary afer raise: ", $person->raise->salary, "\n";
