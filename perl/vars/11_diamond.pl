#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my $line;

while (defined($line = <>)) {
    chomp($line);
    print "It was $line that I saw!\n";
}

while (<>) {
    chomp;
    print "It was $_ that I saw!\n";
}

@ARGV = qw# larry moe curly #; # force these three files to be read
while (<>) {
    chomp;
    print "It was $_ that I saw in some stooge-like file!\n";
}
