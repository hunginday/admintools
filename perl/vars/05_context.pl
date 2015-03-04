#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Camel;

my $camels = "123";
print $camels + 1, "\n";

my $fido = Camel->new();
if (not $fido) { die "dead camel"; }
$fido->saddle();


# assignment to a scalar variable, or to a scalar element of an array or hash
# $x = funkshun();          # scalar context
# $x[1] = funkshun();       # scalar context
# $x{"ray"} = funkshun();   # scalar context


# assignment to an array or a hash, or to a slice of either
# @x = funkshun();          # list context
# @x[1] = funkshun();       # list context
# @x{"ray"} = funkshun();   # list context
# %x = funkshun();          # list context

# ($x,$y,$z) = funkshun();  # list context
# ($x) = funkshun();        # list context

my @stuff = ("one", "two", "three");
my $stuff = ("one", "two", "three");

my @stuff2 = ("one", "two", "three");
my $stuff2 = @stuff2;

print "end\n";