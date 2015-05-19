#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Horse;

my $steed = Horse->new(color => "dun");
dump \$steed;

my $foal = $steed->clone(owner => "EquuGen Guild, Ltd.");
dump \$foal;
