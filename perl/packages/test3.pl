#~/usr/bin/perl -w

use strict;

our ($bob);
use vars qw($carol);

$carol = "ted";
$bob = "alice";

print "Bob => $bob, Carol => $carol\n";

package Movie;

print "Bob => $bob, Carol => $carol\n";
