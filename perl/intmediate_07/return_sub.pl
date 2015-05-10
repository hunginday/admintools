#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;

sub create_sub {
    my $count = 0;

    return (sub {
        $count++;
        say "count+1 = $count"
    }, sub {
        $count *= 2;
        say "count*2 = $count"
    });
}

my ($sub1, $sub2) = create_sub();
$sub1->();
$sub2->();

my ($sub3, $sub4) = create_sub();
$sub3->();
$sub4->();
