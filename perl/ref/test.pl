#!/Users/hung.tran/perl5/perlbrew/perls/perl-5.20.1/bin/perl
use strict;
use warnings;

my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio);

my %all = (
    Gilligan  => \@gilligan,
    Skipper   => \@skipper,
    Professor => \@professor,
);

print "1. @gilligan\n";

print "2. " . $all{Gilligan}. "\n";

my $all_ref = \%all;

print @{$all_ref->{Gilligan}}."\n";

print @{(\%all)->{Gilligan}}."\n";
