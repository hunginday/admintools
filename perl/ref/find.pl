#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;

use File::Find;

my @starting_directories = ('/hungtd/git/study/');

find(
    sub {
    print "$File::Find::name found\n";
    },
    @starting_directories,
);
