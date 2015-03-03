#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
require Camel;

my $camels = "123";
print $camels + 1, "\n";

my $fido = Camel->new();
if (not $fido) { die "dead camel"; }
$fido->saddle();

print "end\n";