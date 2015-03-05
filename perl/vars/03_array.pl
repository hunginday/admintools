#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# assign a list to an array
my @home = ("couch", "chair", "table", "stove");

my ($potato, $lift, $tennis, $pipe) = @home;


my @froots = qw(
    apple       banana      carambola
    coconut     guava       kumquat
    mandarin    nectarine   peach
    pear        persimmon   plum
);

print "froots = ".Dumper(@froots)."\n";

my $alpha = "alpha";
my $omega = "omega";

($alpha, $omega) = ($omega, $alpha);

print "alpha=$alpha\n";
print "omega=$omega\n";

#=======================

# @days                 Array containing ($days[0], $days[1], ... $days[N])
# @days[3, 4, 5]        Array slice containing ($days[3], $days[4], $days[5])
# @days[3..5]           Array slice containing ($days[3], $days[4], $days[5])
# @days{"Jan","Feb"}    Hash slice containing ($days{"Jan"},$days{"Feb"})

my $temp = join( $", @ARGV );
print $temp."\n";
print "@ARGV\n";

#=====LIST==============
# Find a hex digit.
my $digit = 13;
my $hexdigit = ("a","b","c","d","e","f")[$digit-10];
print "hexdigit = $hexdigit\n";

# Get multiple values as a slice.
my ($day, $month, $year) = (localtime)[3,4,5];
my @localtime = localtime;
print "localtime = ".Dumper(@localtime)."\n";

my ($dev, $ino, undef, undef, $uid, $gid) = stat("/etc/hosts");
my @hosts_info = ($dev, $ino, undef, undef, $uid, $gid);
print "hosts_info = ".Dumper(@hosts_info)."\n";





print "end\n";
