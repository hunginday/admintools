package Navigation;

use strict;
use warnings;
use Data::Dumper;
use Data::Dump qw(dump); # CPAN module
use v5.14;

our @homeport = (21.283, -157.842);

my @localhomeport = @homeport;

my $localport = 10;

sub turn_toward_heading {
#.. code here ..
}

sub turn_toward_port {
#.. code here ..
}

sub get_me_home {
    my @homeport = (1, 2);
    say "homeport1: ";
    dump \@homeport;

    say "homeport2: ";
    dump \@Navigation::homeport;
}

say "homeport in compiled time: ";
dump \@homeport;

1;
