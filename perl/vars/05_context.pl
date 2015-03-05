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
print "stuff = $stuff\n";

my @stuff2 = ("one", "two", "three");
my $stuff2 = @stuff2;
print "stuff2 = $stuff2\n";

my $x = (my ($a, $b) = (7,7,7) ); # set $x to 3, not 2 (right side value in scalar context)
print "x = $x\n";

my @days = qw(mon tue wed thu fri sat sun);
my $days_len = @days + 0;
print "days length = $days_len\n";
print "days length = ".scalar(@days)."\n";
print "index of the last element: $#days\n";




print "end\n";