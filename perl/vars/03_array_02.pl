#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module


my @array = 5..9;
my $fred = pop(@array); # $fred gets 9, @array now has (5, 6, 7, 8)
my $barney = pop @array; # $barney gets 8, @array now has (5, 6, 7)
pop @array; # @array now has (5, 6). (The 7 is discarded.)
push(@array, 0); # @array now has (5, 6, 0)
push @array, 8; # @array now has (5, 6, 0, 8)
push @array, 1..10; # @array now has those 10 new elements

dump @array;

print Dumper(@array)."\n";

my @others = qw/ hanoi hue saigon /;
push @array, @others; # @array now has those five new elements (19 total)

dump @array;

my @rocks = qw{ flintstone slate rubble };
print "quartz @rocks limestone\n"; # prints five rocks separated by spaces

@rocks = qw/ bedrock slate lava /;

my $rock = "test";

foreach $rock (@rocks) {
    $rock = "\t$rock"; # put a tab in front of each element of @rocks
    $rock .= "\n"; # put a newline on the end of each
}
print "The rocks are:\n", @rocks; # Each one is indented, on its own line

print "rock is still $rock\n";

foreach (1..10) { # Uses $_ by default
    print "I can count to $_!\n";
}

my @rev = qw /hanoi hungyen haiphong/;
push @rev, qw /3 4 5/;

my @last_rev = reverse @rev;
print "last_rev @last_rev \n";

print @last_rev;

use 5.012;
@rocks = qw/ bedrock slate rubble granite /;
while( my( $index, $value ) = each @rocks ) {
    say "$index: $value";
}

print "\n\n\n$#array: end\n";
