#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $camels = "123";
print $camels + 1, "\n";

my $fido = Camel–>new("Amelia");
if (not $fido) { die "dead camel"; }
$fido–>saddle();

