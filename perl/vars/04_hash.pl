#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my %longday1 =   ("Sun", "Sunday", "Mon", "Monday", "Tue", "Tuesday",
                "Wed", "Wednesday", "Thu", "Thursday", "Fri",
                "Friday", "Sat", "Saturday");

my %longday2 = (
    "Sun" => "Sunday",
    "Mon" => "Monday",
    "Tue" => "Tuesday",
    "Wed" => "Wednesday",
    "Thu" => "Thursday",
    "Fri" => "Friday",
    "Sat" => "Saturday",
);


my %wife;
$wife{"Adam"} = "Eve";
$wife{"Jacob"} = ["Leah", "Rachel", "Bilhah", "Zilpah"]; # a ref to an unamed array

print $wife{"Jacob"}->[0]."\n";
print $wife{"Jacob"}[0]."\n";

my %kids_of_wife;
$kids_of_wife{"Jacob"} = {
    "Leah"   => ["Reuben", "Simeon", "Levi", "Judah", "Issachar", "Zebulun"],
    "Rachel" => ["Joseph", "Benjamin"],
    "Bilhah" => ["Dan", "Naphtali"],
    "Zilpah" => ["Gad", "Asher"],
};

print $kids_of_wife{"Jacob"}->{"Leah"}->[0]."\n";
print $kids_of_wife{"Jacob"}{"Leah"}[0]."\n";

print "end\n";
