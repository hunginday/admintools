#!/Users/hung.tran/perl5/perlbrew/perls/perl-5.20.1/bin/perl
use strict;
use warnings;
#use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my @arr = ('a', 'b', 'c');

test( 'e', \@arr, 'd');

sub test {
    #print "".Dumper(@_)."\n";
    dump @_;
}
