#!/usr/bin/perl
use strict;
use warnings;

require Animal;

my $animal = {
    "legs"   => 4,
    "colour" => "brown",
};                       # $animal is an ordinary hash reference

print ref $animal;       # "HASH"
bless $animal, "Animal"; # now it is an object of class "Animal"
print ref $animal;       # "Animal"
