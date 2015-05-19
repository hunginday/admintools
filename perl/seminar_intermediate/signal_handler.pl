#!/usr/bin/perl
use strict;
use warnings;

$SIG{INT}  = \&signal_handler;
$SIG{TERM} = \&signal_handler;

sleep(20);

sub signal_handler {
    die "Caught a signal $!";
}
