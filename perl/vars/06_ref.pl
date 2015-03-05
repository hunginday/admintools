#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

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

print "end\n";
