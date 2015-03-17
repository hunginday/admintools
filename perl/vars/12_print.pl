#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

#print (2+3)*4; # Oops!

if (@ARGV < 2) {
    #die "Not enough arguments";
}

my $noone;

my $hashref = {};

#$hashref->{"ok"} .= "test";
$hashref->{"ok"} .= $noone;


$hashref->{"dino"} = undef;

if (exists $hashref->{"dino"}) {
    print "this is strange\n";
}


dump $hashref;

my $temp = 33;
($temp -= 32) *= 5;

my ($a,$b,$c);

$a = $b = $c = 0;

print "temp = $temp\n";
