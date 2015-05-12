#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use IO::File;

my %files;

while (<>) {
    my ($name, $rest) = split /:/;
    my $filename = lc( ( split (/ /, $name) )[-1] );

    if ( !exists $files{$filename} ) {
        $files{$filename} = new IO::File->new("$filename.info", 'w')
            or die "Can not open file $filename.info: $!";
    }

    print {$files{$filename}} $_;
}
