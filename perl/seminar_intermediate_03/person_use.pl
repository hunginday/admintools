#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use Data::Dump qw(dump); # CPAN module

use v5.14;

use Person;
use Person2;

# ------------------
# person 1 test
# ------------------
my $him = Person->new;

print "New object created:\n";
dump \$him;

$him->name("Aragorn");
$him->race("Man");
$him->aliases( ["Strider", "Estel", "Elessar"] );

printf "%s is of the race of %s.\n", $him->name, $him->race;
print "His aliases are: ", join(", ", @{$him->aliases}), ".\n";

# ------------------
# person 2 test
# ------------------
my $him2 = Person2->new;

print "New object created:\n";
dump \$him2;

$him2->name("Aragorn");
$him2->race("Man");
$him2->aliases( ["Strider", "Estel", "Elessar"] );

printf "%s is of the race of %s.\n", $him2->name, $him2->race;
print "His aliases are: ", join(", ", @{$him2->aliases}), ".\n";

