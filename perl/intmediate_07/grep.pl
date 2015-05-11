#!/Users/hung.tran/perl5/perlbrew/perls/perl-5.20.1/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my @input_numbers = (1, 12, 24, 34);

my @odd_digit_sum = grep {
    my $sum;
    $sum += $_ for split //;
    $sum % 2;
} @input_numbers;


dump @odd_digit_sum;

print "end.\n";

