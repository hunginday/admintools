#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# $scalarref = \$foo;
# $constref  = \186_282.42;
# $arrayref  = \@ARGV;
# $hashref   = \%ENV;
# $coderef   = \&handler;
# $globref   = \*STDOUT;

my $aref = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"];

my $href = {
    "Sun" => "Sunday",
    "Mon" => "Monday",
    "Tue" => "Tuesday",
    "Wed" => "Wednesday",
    "Thu" => "Thursday",
    "Fri" => "Friday",
    "Sat" => "Saturday"
};

my $sref = sub {
    my $a = shift;
    my $b = shift;

    return $a + $b;
};


print $aref->[3]."\n";      # an array dereference
print $href->{"Sun"}."\n";  # a hash dereference
print $sref->(1,2)."\n";    # a subroutine dereference


# a reference to an anonymous array
my $arrayref = [1, 2, ["a", "b", "c", "d"]];


print "end\n";
