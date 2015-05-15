#!/usr/bin/perl
 
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

my $firstname_filepath = 'data/First_Names.csv';
my $lastname_filepath = 'data/Last_Names.csv';
my $city_filepath = 'data/cities.csv';

my @firstnames;
my @lastnames;
my @cities;

# load data
open (my $lastname_fh, "<", $lastname_filepath)
    or die "Can not open file: $!";

while (<$lastname_fh>) {
    chomp;
    push @lastnames, $_;
}

open (my $fisrtname_fh, "<", $firstname_filepath)
    or die "Can not open file: $!";

while (<$fisrtname_fh>) {
    chomp;
    push @firstnames, $_;
}

open (my $city_fh, "<", $city_filepath)
    or die "Can not open file: $!";

while (<$city_fh>) {
    chomp;
    push @cities, [ split /,/ ];
}

# print "Enter the limit\n";
chomp(my $lim = <STDIN>);

for (1..$lim) {
    my $name = $firstnames[rand @firstnames] . " " . $firstnames[rand @firstnames] . " " . $lastnames[rand @lastnames];
    my @months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
    my $day = 1 + int(rand(28));
    my $year = 1900 + int(rand(115));
    my $date = $day . " " . $months[rand @months]. " " . $year;
    my $city = $cities[rand @cities]->[2];

    print "$name, $date, $city\n";
}



 

