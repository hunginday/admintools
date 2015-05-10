#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;

sub create_sub {
    my $count = shift;

    return (sub {
        $count++;
        say "count+1 = $count"
    }, sub {
        $count *= 2;
        say "count*2 = $count"
    });
}

my ($sub1, $sub2) = create_sub(10);
$sub1->();
$sub2->();

my ($sub3, $sub4) = create_sub(20);
$sub3->();
$sub4->();
