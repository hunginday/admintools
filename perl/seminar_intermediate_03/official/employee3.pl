#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Employee3;

my $dilbert = Employee->new(
    surname => "Dilbert",
    employer => "Dogbert",
    salary => "43000",
);

dump \$dilbert;

my $boss = $dilbert->employer;
$boss->address("3724 Cuberville");

dump \$dilbert;

my $dogbert = Employee->new(
    surname => "Dogbert",
    employer => "PHB",
    salary => $dilbert->salary*2,
);

$dilbert->employer($dogbert);

dump \$dilbert;
