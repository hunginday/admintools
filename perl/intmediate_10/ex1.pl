#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Benchmark qw(timethese);

#---------------
chdir; # the default is our home directory
my @sorted = sort { -s $a <=> -s $b } glob '*';
dump \@sorted;

#---------------
@sorted = sort { $a->[1] <=> $b->[1] } map [ $_, -s $_ ], glob '*';
dump \@sorted;

#---------------
chdir;
my @files = glob '*';
print 'There are ' . @files . " files to compare\n";

my $ordinary = sub {
    my @sorted = sort { -s $a <=> -s $b } @files;
};
my $transform = sub {
my @sorted = map $_->[0],
    sort { $a->[1] <=> $b->[1] }
    map [$_, -s $_],
    @files;
};

timethese( -2, {
    Ordinary => $ordinary,
    Schwartzian => $transform,
});
