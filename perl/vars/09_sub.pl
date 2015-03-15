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
    $n;
}


print &max (1,2,3,4);

sub max {
    my ($max) = shift;
    foreach (@_) {
        if ($_ > $max) {
            $max = $_;
        }
    }
    $max;
}


&test_ok;

sub test_ok {
    print "test ok\n";
}

test_ok;

sub pop {
    print "ok pop\n";
}

&pop;

print "end\n"
