#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
$Data::Dumper::Indent   = 1;
$Data::Dumper::Deepcopy = 1;
$Data::Dumper::Sortkeys = 1;
$Data::Dumper::Terse    = 1;

my($before_f, $after_f) = @ARGV;

my $before = do $before_f;
my $after  = do $after_f;

for my $mod (sort keys %$before) {
    if ($before->{$mod} !~ /ERROR/) {
        printf "  cpanm %s@%s\n", $mod, $before->{$mod};
    }
}
