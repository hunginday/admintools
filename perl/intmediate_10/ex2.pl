#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

my @words;

say "Input a list of words to sort:";
while (defined(my $word = <STDIN>)) {
    # body...
    chomp $word;
    if ($word) {
        push @words, $word;
    }
}

dump \@words;

my @last = map $_->[0],
sort { $a->[1] cmp $b->[1] }
map {
    my $string = $_;
    $string =~ tr/A−Z/a−z/;
    $string =~ tr/a−z//cd;
    [ $_, $string ];
} @words;

dump \@last;
