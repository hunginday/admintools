#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;

my %total_bytes;

while (<>) {
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
}

for my $source ( sort sort_function keys %total_bytes ) {
    for my $destination ( sort { $total_bytes{$source}{$b} <=> $total_bytes{$source}{$a} } keys %{ $total_bytes{$source} } ) {
        print "$source => $destination:",
        " $total_bytes{$source}{$destination} bytes\n";
    }
    print "\n";
}

sub sort_function {
    my $sum_a = 0;
    for my $hash_key ( keys %{$total_bytes{$a}} ) {
       $sum_a += $total_bytes{$a}->{$hash_key};
    }

    my $sum_b = 0;
    for my $hash_key ( keys %{$total_bytes{$b}} ) {
       $sum_b += $total_bytes{$b}->{$hash_key};
    }

    return $sum_a <=> $sum_b;
}
