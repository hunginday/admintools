#!/usr/bin/perl
use strict;
use warnings;

while (1) {
print "just testing...\n";
print {*STDERR} "test error...\n";
sleep(5);
}
