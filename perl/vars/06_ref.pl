#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

$aref = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"];

$href = {
    "Sun" => "Sunday",
    "Mon" => "Monday",
    "Tue" => "Tuesday",
    "Wed" => "Wednesday",
    "Thu" => "Thursday",
    "Fri" => "Friday",
    "Sat" => "Saturday"
};

$sref = sub {
    $a = shift;
    $b = shift;

    print "hello world: $a + $b\n";
}

print $aref–>["mon"]."\n";  # an array dereference
print $href–>{"Sun"}."\n";  # a hash dereference
print $sref–>(1,2)."\n";    # a subroutine dereference

print "end\n";
