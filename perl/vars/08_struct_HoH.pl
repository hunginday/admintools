#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my %HoH = (
    flintstones => {
        husband => "fred",
        pal => "barney",
    },
    jetsons => {
        husband => "george",
        wife => "jane",
        "his boy" => "elroy", # Key quotes needed.
    },
    simpsons => {
        husband => "homer",
        wife => "marge",
        kid => "bart",
    },
);

for my $family ( keys %HoH ) {
    print "$family: ";
    for my $role ( keys %{ $HoH{$family} } ) {
        print "$role=$HoH{$family}{$role} ";
    }
    print "\n";
}


print "next\n";

while ( (my $family, my $roles) = each %HoH ) {
    print "$family: ";
    while ( (my $role, my $person) = each %$roles ) {
        print "$role=$person ";
    }
}


print "end\n";