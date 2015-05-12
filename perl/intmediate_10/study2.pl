#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use File::Basename;
use File::Spec::Functions;

my $data = data_for_path( '..' );

sub data_for_path {
    my( $path ) = @_;
    my $data = {};
    my @queue = ( [ $path, $data ] );

    while ( my $next = shift @queue ) {
        my( $path, $ref ) = @$next;
        my $basename = basename( $path );
        $ref->{$basename} = do {
            if( -f $path or -l $path ) { undef }
            else {
                my $hash = {};
                opendir (my $dh, $path);
                
                my @new_paths = map {
                    catfile( $path, $_ )
                }
                grep { ! /^\.\.?\z/ } 
                readdir $dh;
                
                unshift @queue, map { [ $_, $hash ] } @new_paths;
                $hash;
            }
        };
    }
    $data;
}

dump \$data;