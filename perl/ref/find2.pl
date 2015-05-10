#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;

use File::Find;

my @starting_directories = ('.');

sub create_find_callbacks_that_sum_the_size {
    my $total_size = 0;
    return(sub { $total_size += -s if -f }, sub { return $total_size });
}

my (my $count_em, my $get_results) = create_find_callbacks_that_sum_the_size( );
find($count_em, '.');
my $total_size = &$get_results( );
print "total size of the folder is $total_size\n";


my (my $count_em2, my $get_results2) = create_find_callbacks_that_sum_the_size( );
find($count_em2, '..');
my $total_size2 = &$get_results2( );
print "total size of the folder is $total_size2\n";

