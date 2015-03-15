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