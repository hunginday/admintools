#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;
use Benchmark;

my @unsorted;
my @sorted1;
my @sorted2;

while (<>) {
    next if /^#/;
    chomp;
    push @unsorted, $_;
}

timethese( 0, {
    "schwartzian" => sub { @sorted1 = 
                                map{ $_->[0] }
                                sort { $a->[1] cmp $b->[1] }
                                map { m/(.*?)\s*(\S+)$/; [$_, "$2 $1" ] }
                                @unsorted },
    "sort routine" => sub { @sorted2 = sort mysort @unsorted }
});

dump \@sorted1;

sub mysort
{
    $a =~ m/(.*?)\s*(\S+)$/;
    my $aa = "$2 $1";
    $b =~ m/(.*?)\s*(\S+)$/;
    my $bb = "$2 $1";
    return $aa cmp $bb;
}
