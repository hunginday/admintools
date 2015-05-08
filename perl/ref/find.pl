#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;

use File::Find;

my @starting_directories = ('.');

find(
    sub {
    print "$File::Find::name found\n";
    },
    @starting_directories,
);

my $total_size1 = 0;
find(sub { $total_size1 += -s if -f }, '.');
print "total_size1: ", $total_size1, "\n";

sub create_find_callback_that_sums_the_size {
    my $total_size = 0;
        return sub {
            if (@_) { # it's our dummy invocation
            return $total_size;
        } else { # it's a callback from File::Find:
            $total_size += -s if -f;
        }
    };
}

my $callback = create_find_callback_that_sums_the_size( );
find($callback, '.');
my $total_size = $callback->('dummy'); # dummy parameter to get size
print "total size of bin is $total_size\n";

