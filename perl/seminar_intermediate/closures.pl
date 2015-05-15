#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

sub make_fruit_counter {
    my $fruit  = shift;
    my $total  = 0;

    return sub {
       my $number = shift;
       $total = $total + $number;
       return "$total $fruit".($total > 1 ? 's' : '');
    };
}

my $apple = make_fruit_counter('apple');
my $orange = make_fruit_counter('orange');

print $apple->(1)."\n";
print $apple->(3)."\n";
print $orange->(1)."\n";
print $apple->(5)."\n";
print $orange->(1)."\n";
