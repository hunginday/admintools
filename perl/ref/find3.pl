#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.10;

use File::Find;
use File::Find::Closures qw(:all);

my( $wanted, $list_reporter ) = find_by_name( qw(coconet.pl) );

find( $wanted, '.' );

my @readmes = $list_reporter->();
