#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;
use Data::Dump::Streamer;

my @luxuries = qw(Diamonds Furs Caviar);

my $hash = {
    Gilligan        => sub { say 'Howdy Skipper!' },
    Skipper         => sub { say 'Gilligan!!!!' },
    'Mr. Howell'    => sub { say 'Money money money!' },
    Ginger          => sub { say $luxuries[rand @luxuries] },
};

Dump $hash;
