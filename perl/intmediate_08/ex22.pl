#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use IO::File;

my %files;

while (<>) {
    if (/^([^:]+):/) {
        say "matched: $1";
    }
}

