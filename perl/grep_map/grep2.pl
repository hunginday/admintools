#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;


my %provisions = (
    'The Skipper' => [qw(blue_shirt hat jacket preserver sunscreen) ],
    'The Professor' => [qw(sunscreen water_bottle slide_rule batteries radio) ],
    'Gilligan' => [qw(red_shirt hat lucky_socks water_bottle) ],
);
dump \%provisions;

my @packed_light = grep @{ $provisions{$_} } < 5, keys %provisions;
dump \@packed_light;

my @water_bought = grep {
        grep $_ eq 'water_bottle', @{ $provisions{$_} };
    } keys %provisions;
dump \@water_bought;

my @remapped_list = map {
    [ $_ => $provisions{$_} ];
} keys %provisions;
dump \@remapped_list;

my @remapped_list2 = map {
    [ $_, $provisions{$_} ];
} keys %provisions;
dump \@remapped_list2;

my @person_item_pairs = map {
    my $person = $_;
    my @items = @{ $provisions{$person} };
    map [$person => $_], @items;
} keys %provisions;
dump \@person_item_pairs;
