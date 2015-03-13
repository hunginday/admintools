#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module


my $n = 100;

&marine;

sub marine {
    $n += 1; # Global variable $n
    print "Hello, sailor number $n!\n";
}

print "end\n"
