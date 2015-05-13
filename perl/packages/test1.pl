#!/usr/bin/perl -w

use strict;


package Szywiecki;

$Robert = "the boss";

sub terminate {
  my $name = shift;
  # the following line was updated on 2004-12-29 following on aristotle73's comment
  print "$Robert has canned ${name}'s sorry butt\n";
}

terminate("arturo"); # prints "the boss has canned arturo's sorry butt"

package main;

# terminate("arturo"); # produces an error if you uncomment it
