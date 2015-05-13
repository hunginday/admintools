#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.14;

require 'Navigation.pm';

sub turn_toward_port {
    Navigation::turn_toward_heading(compute_heading_to_island( ));
}

sub compute_heading_to_island {
#.. code here ..
}


Navigation::get_me_home();

my @destination = @Navigation::homeport;
say "destination: ";
dump \@destination;

my $localport = $Navigation::localport;
say "localport: ";
dump \$localport;
