#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# $scalarref = \$foo;
# $constref  = \186_282.42;
# $arrayref  = \@ARGV;
# $hashref   = \%ENV;
# $coderef   = \&handler;
# $globref   = \*STDOUT;

my $aref = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"];

my $href = {
    "Sun" => "Sunday",
    "Mon" => "Monday",
    "Tue" => "Tuesday",
    "Wed" => "Wednesday",
    "Thu" => "Thursday",
    "Fri" => "Friday",
    "Sat" => "Saturday"
};

my $sref = sub {
    my $a = shift;
    my $b = shift;

    return $a + $b;
};

print $aref->[3]."\n";      # an array dereference
print $href->{"Sun"}."\n";  # a hash dereference
print $sref->(1,2)."\n";    # a subroutine dereference


# a reference to an anonymous array
my $arrayref = [1, 2, ["a", "b", "c", "d"]];
print '$arrayref->[2][1] = '.$arrayref->[2][1]."\n";

# hash of arrays
my $table1 = {
    "john" => [ 47, "brown", 186 ],
    "mary" => [ 23, "hazel", 128 ],
    "bill" => [ 35, "blue", 157 ],
};

# hash of hashes
my $table2 = {
    "john" => { age => 47,
        eyes => "brown",
        weight => 186,
    },
    "mary" => { age => 23,
        eyes => "hazel",
        weight => 128,
    },
    "bill" => { age => 35,
        eyes => "blue",
        weight => 157,
    },
};

# ref to an anonymous subroutine
my $coderef = sub { print "Boink!\n" };


print "end\n";
